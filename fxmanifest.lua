fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'DuncanEll - (SUPREME)'
description 'SHOPS'
version '1.0.0'

dependencies {
    "PolyZone"
}

client_script {
    'config.lua',
    'client/client.lua',
    'client/shoptargets.lua',
    'client/utils.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',

}

server_script {
	'server/server.lua',
    'config.lua'
}
