-- Resource Metadata
fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
games        { 'rdr3', 'gta5' }

name 'mor-npcs'
author 'morpheus1076'
description 'NPC´s setzen'
version '0.0.2'

client_script {
			"client.lua",
			"config.lua"
		}

server_script {
			'server.lua',
			'@oxmysql/lib/MySQL.lua'
		}

shared_script {'@ox_lib/init.lua'}
