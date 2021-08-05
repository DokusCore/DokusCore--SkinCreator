--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNUICallback('saveSkin', function(data, cb)
  SetNuiFocus(false, false)
  local ped = PlayerPedId()
  local encode = json.encode(data)
  FreezeEntityPosition(ped, false)
  DisplayHud(true)
  DisplayRadar(true)
  SetCamActive(cam, false)
  DestroyCam(cam, true)
  local Data = TSC('DokusCore:S:Core:GetCoreUserData')
  local User = TSC('DokusCore:S:Core:DB:GetViaSteamAndCharID', {DB.Characters.Get, Data.Steam, Data.CharID})
  TSC('DokusCore:S:Core:DB:UpdateViaSteamAndCharID', {DB.Characters.SetSkin, 'Skin', encode, Data.Steam, Data.CharID})
  DestroyAllCams()
  IsMenuOpen = false
  ShowSkinCreator(false)
  SetPlayerInvincible(PlayerId(), false)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNUICallback('updateBody', function(data, cb)
  TriggerEvent("DokusCore:SkinCreator:C:UpdateSkin", data)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNUICallback('heading', function(data)
  local playerPed = PlayerPedId()
  headingss = headingss + data.value
  SetEntityHeading(playerPed, headingss)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNUICallback('camera', function(data)
  if data.zoom ~= nil then
    if c_zoom + data.zoom < 2.8 and c_zoom + data.zoom > 0.7 then
      c_zoom = c_zoom + data.zoom
    end
  end
  if data.offset ~= nil then
    if c_offset + data.offset < 1.2 and c_offset + data.offset > - 1.0 then
      c_offset = c_offset + data.offset
    end
  end
  camera(c_zoom, c_offset)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNUICallback('defcam', function(data)
  camera(2.8, - 0.15)
  c_zoom = 2.8
  c_offset = -0.15
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
