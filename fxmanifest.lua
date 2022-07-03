fx_version 'bodacious'
games {'rdr3'}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
	'config.lua',
	'client.lua'
}

server_scripts {
	'config.lua',
	'server.lua'
}

escrow_ignore { -- Don't allow files to be locked if escrowed
	"config.lua",
	"readme.md",
}

lua54 'yes'