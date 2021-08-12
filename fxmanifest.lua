--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'DokusCore Skin Creator'
author 'http://DokusCore.com'
fx_version "adamant"
games {"rdr3"}
version '1.0.1'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
client_scripts { '[ Core ]/[ Client ]/*.lua' }
server_scripts { '@mysql-async/lib/MySQL.lua', '[ Core ]/[ Server ]/*.lua' }
shared_script {
  'Config.lua',
  '@DokusCore/Config.lua',
  '@DokusCore/[ Core ]/[ System ]/Callbacks.lua',
  '@DokusCore/[ Core ]/[ Server ]/[ Data ]/DBTables.lua',
  '@DokusCore/[ Core ]/[ System ]/Languinator.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/bg.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/de.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/dk.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/en.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/es.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/fr.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/gr.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/it.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/nl.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/pl.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/pt.lua',
  '@DokusCore/[ Core ]/[ System ]/[ Language ]/ru.lua',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ui_page "UI/index.html"
files {
  "UI/index.html",
  "UI/assets/*.png",
  "UI/assets/heritage/*.png",
  "UI/fonts/*.ttf",
  "UI/front.js",
  "UI/script.js",
  "UI/style.css",
  'UI/debounce.min.js'
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
export 'GetOverlayData'
export 'GetTorso'
export 'GetLegs'
export 'GetComponentId'
export 'GetBodyComponents'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
