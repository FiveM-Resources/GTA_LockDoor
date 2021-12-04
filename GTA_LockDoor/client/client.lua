local Duree = 0

local function OpenDOorsWithLockCode() 
	--> NUI : 
	SendNUIMessage({active = true})
	SetNuiFocus(true, true)
end

local function OpenDoorsWithPerms() 
	Wait(150)
	local playerCoords = GetEntityCoords(PlayerPedId())
	local dict, anim = 'mp_common_heist', 'a_atm_mugging'

	for i=1, #Config.DoorList do
		local doorID   = Config.DoorList[i]
		local distance = getDistance(playerCoords, doorID.objCoords)
		local maxDistance = 1.0
		
		if doorID.distance then
			maxDistance = doorID.distance
		end

		if distance < maxDistance then
			canRequestAnimDict(dict)
			TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, 1.0, 1000, 16, 0.0, false, false, false)

			doorID.doorLock = not doorID.doorLock
			TriggerServerEvent('GTA:UpdateVerrouillageServer', i, doorID.doorLock)	
		end
	end
end

local function ApplyDoorState(doorID)
	local closeDoor = GetClosestObjectOfType(doorID.objCoords.x, doorID.objCoords.y, doorID.objCoords.z, 1.0, GetHashKey(doorID.objName), false, false, false)
	FreezeEntityPosition(closeDoor, doorID.doorLock)
end


Citizen.CreateThread(function()
	TriggerServerCallback('GTA:GetInfoPortes', function(doorInfo, count)
		for localID = 1, count, 1 do
			if doorInfo[localID] ~= nil then
				Config.DoorList[doorInfo[localID].doorID].doorLock = doorInfo[localID].state
			end
		end
	end)
end)


Citizen.CreateThread(function()
	while true do
		local playerPed = GetPlayerPed(-1)
		Duree = 250
		local playerCoords = GetEntityCoords(playerPed)
		for i=1, #Config.DoorList do
			local doorID   = Config.DoorList[i]
			local distance = getDistance(playerCoords, doorID.objCoords)
			local maxDistance = 1.0

			if doorID.distance then
				maxDistance = doorID.distance
			end

			if distance < maxDistance then
				local Duree = 125

				ApplyDoorState(doorID)

				while Duree ~= 0 do
					Citizen.Wait(1)
					Duree = Duree - 1

					local size = 1
					if doorID.size then
						size = doorID.size
					end


					local displayText = '🔓'
					if doorID.doorLock then
						displayText = '🔒'
					end
					DrawText3DMarker(doorID.textCoords.x, doorID.textCoords.y, doorID.textCoords.z, displayText)


					if doorID.permission == false and IsControlJustReleased(0, 38) then
						OpenDOorsWithLockCode()
					elseif doorID.permission == true and IsControlJustReleased(0, 38) then
						OpenDoorsWithPerms()
					end
				end
			end
		end
        Citizen.Wait(Duree)
	end
end)



-- Update statut de votre porte.
RegisterNetEvent('GTA:UpdateVerrouillageClient')
AddEventHandler('GTA:UpdateVerrouillageClient', function(doorID, state)
	Config.DoorList[doorID].doorLock = state
end)

AddEventHandler('onClientResourceStart', function (resourceName)
	if(GetCurrentResourceName() ~= resourceName) then
		return
	end
    
    for i=1, #Config.DoorList do
        local doorID   = Config.DoorList[i]
        ApplyDoorState(doorID)
    end
end)



--> CallBack Main from NUI : used to show the wanted announce.
RegisterNUICallback("main", function(data)
    local secureCode = data.securityCode
	local playerCoords = GetEntityCoords(PlayerPedId())
	local dict, anim = 'mp_common_heist', 'a_atm_mugging'

	--> Load Door List :
	for i=1, #Config.DoorList do
		local doorID   = Config.DoorList[i]
		local distance = getDistance(playerCoords, doorID.objCoords)
		local maxDistance = 1.0
		
		if doorID.distance then
			maxDistance = doorID.distance
		end

		if distance < maxDistance then
			if tonumber(secureCode) == nil then
				SetNuiFocus(false, false)
				SendNUIMessage({
					active = false
				})
				ShowNotification("~y~Please enter a valid code.")
				return false
			end

			canRequestAnimDict(dict)
			TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, 1.0, 1000, 16, 0.0, false, false, false)

			if tonumber(secureCode) == doorID.codeSecret or tonumber(secureCode) == doorID.codeAdmin then
				ShowNotification("~g~Correct security code.")
				doorID.doorLock = not doorID.doorLock
				TriggerServerEvent('GTA:UpdateVerrouillageServer', i, doorID.doorLock)
				doorID.permission = true
			else
				ShowNotification("~r~Incorrect security code.")
			end				
		end
	end

	SetNuiFocus(false, false)
	SendNUIMessage({active = false})
end)

RegisterNUICallback("close", function(data)
	SetNuiFocus(false, false)
	SendNUIMessage({
		active = false
	})
end)