local DoorInfo	= {}
ServerCallbacks = {}

RegisterServerCallback = function(name, cb)
	ServerCallbacks[name] = cb
end


TriggerServerCallback = function(name, requestId, source, cb, ...)
	if ServerCallbacks[name] then
		ServerCallbacks[name](source, cb, ...)
	end
end

RegisterServerEvent('GTA:UpdateVerrouillageServer')
AddEventHandler('GTA:UpdateVerrouillageServer', function(doorID, state)
	if type(doorID) ~= 'number' then
		return
	end

	DoorInfo[doorID] = {}

	DoorInfo[doorID].state = state
	DoorInfo[doorID].doorID = doorID

	TriggerClientEvent('GTA:UpdateVerrouillageClient', -1, doorID, state)
end)

RegisterServerCallback('GTA:GetInfoPortes', function(source, cb)
	cb(DoorInfo, #DoorInfo)
end)