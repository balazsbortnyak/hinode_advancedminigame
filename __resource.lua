resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Hinode Advanced Minigame'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/main.lua'
}