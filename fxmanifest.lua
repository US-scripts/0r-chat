--[[ FX Information ]]
fx_version "cerulean"
game "gta5"
lua54 "yes"

--[[ Resource Information ]]
name "0r-chat-v3"
author "aliko. <Discord>"
description "Chat Script V3"
version "3.0"

--[[ Manifest ]]
shared_script "shared/**/*"

client_scripts {
	"client/variables.lua",
	"client/functions.lua",
	"client/events.lua",
	"client/commands.lua",
	"client/nui.lua",
	"client/threads.lua",
}

server_scripts {
	"server/variables.lua",
	"server/functions.lua",
	"server/commands.lua",
	"server/events.lua",
}

ui_page "ui/build/index.html"

files {
	"ui/build/index.html",
	"ui/build/**/*",
}

escrow_ignore {
	"shared/**/*",
	"client/**/*",
	"server/**/*",
	"ui/**/*"
}

dependency '/assetpacks'