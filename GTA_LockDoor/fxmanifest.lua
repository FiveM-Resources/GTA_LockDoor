fx_version 'cerulean'
game 'gta5' 

author "SuperCoolNinja"
version "2.0"


server_scripts {
	'config.lua',
	'server/main.lua'
}

client_scripts {
	"client/utils.lua",
	"config.lua",
	"client/client.lua"
}


ui_page "nui/index.html"
files {
    "nui/index.html",
    "nui/script.js",
    "nui/style.css"
}
