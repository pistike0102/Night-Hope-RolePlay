client_script 'menu.lua'
client_script 'lscustoms.lua'
client_script 'lsconfig.lua'


resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_scripts { 
	'@mysql-async/lib/MySQL.lua',
	'lscustoms_server.lua',
	'lsconfig.lua'
}

