------------------------------------------------LOCALS------------------------------------------------------------------------

smokeduration = Config.SmokeTimerinSeconds --Duration of colored smoke in seconds

fireworklist = {}
coloredsmoke = {}

------------------------------------------------COMMAND USAGE------------------------------------------------------------------------

if Trigger.Command then

    RegisterCommand(Config.DualShot, function()
        pedcoords = GetEntityCoords(PlayerPedId())
        TriggerServerEvent('fireworks:SingleUse', pedcoords)
    end)

    RegisterCommand(Config.Barrage, function()
        pedcoords = GetEntityCoords(PlayerPedId())
        TriggerServerEvent('fireworks:Barrage', pedcoords)
    end)

    RegisterCommand(Config.Finale, function()
        pedcoords = GetEntityCoords(PlayerPedId())
        TriggerServerEvent('fireworks:MakeAmericaGreatAgain', pedcoords)
    end)

    RegisterCommand(Config.SmokeSignal, function()
        local ped = PlayerPedId()
        local smokecoords = {
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,0.0,0.0)},--white
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(0.0,0.0,1.0)},--white
        }
        TriggerServerEvent('fireworks:smokesignal', smokecoords)
    end)

    RegisterCommand(Config.USASmokeSignal, function()
        local ped = PlayerPedId()
        local smokecoords = {
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--red
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
            {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--blue
        }
        TriggerServerEvent('fireworks:usasmokesignal', smokecoords)
    end)
end

------------------------------------------------SINGLE USE FIREWORK------------------------------------------------------------------------

RegisterNetEvent('fireworks:SingleUse')
AddEventHandler('fireworks:SingleUse', function(_source)
    local _source = source
    coords = GetEntityCoords(PlayerPedId())
    RequestNamedPtfxAsset(GetHashKey('scr_ind1'))
    while not HasNamedPtfxAssetLoaded(GetHashKey('scr_ind1')) do
        Wait(10)
    end
    UseParticleFxAsset('scr_ind1')
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale
    UseParticleFxAsset('scr_ind1')
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, fireworks, 10.0)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, groundeffects, 10.0)
    SetParticleFxLoopedAlpha(fireworks, 1.0)
    SetParticleFxLoopedAlpha(groundeffects, 1.0)
    table.insert(fireworklist, fireworks)
    table.insert(fireworklist, groundeffects)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Wollffus)
    for k,v in pairs(fireworklist) do
        StopParticleFxLooped(v, true)
    end
end)

------------------------------------------------Barrage FIREWORK------------------------------------------------------------------------

RegisterNetEvent('fireworks:Barrage')
AddEventHandler('fireworks:Barrage', function(_source)
    local _source = source
    coords = GetEntityCoords(PlayerPedId())
    RequestNamedPtfxAsset(GetHashKey('scr_ind1'))
    while not HasNamedPtfxAssetLoaded(GetHashKey('scr_ind1')) do
        Wait(10)
    end
    UseParticleFxAsset('scr_ind1')
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale
    UseParticleFxAsset('scr_ind1')
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, fireworks, 10.0)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, groundeffects, 10.0)
    SetParticleFxLoopedAlpha(fireworks, 1.0)
    SetParticleFxLoopedAlpha(groundeffects, 1.0)
    table.insert(fireworklist, fireworks)
    table.insert(fireworklist, groundeffects)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Jesikuh)
    for k,v in pairs(fireworklist) do
        StopParticleFxLooped(v, true)
    end
end)

------------------------------------------------GRAND FINALE FIREWORK------------------------------------------------------------------------

RegisterNetEvent('fireworks:MakeAmericaGreatAgain')
AddEventHandler('fireworks:MakeAmericaGreatAgain', function(_source)
    local _source = source
    coords = GetEntityCoords(PlayerPedId())
    RequestNamedPtfxAsset(GetHashKey('scr_ind1'))
    while not HasNamedPtfxAssetLoaded(GetHashKey('scr_ind1')) do
        Wait(10)
    end
    UseParticleFxAsset('scr_ind1')
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale
    UseParticleFxAsset('scr_ind1')
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, fireworks, 10.0)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, groundeffects, 10.0)
    SetParticleFxLoopedAlpha(fireworks, 1.0)
    SetParticleFxLoopedAlpha(groundeffects, 1.0)
    table.insert(fireworklist, fireworks)
    table.insert(fireworklist, groundeffects)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 0.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,0.0, false) -- This fires two fireworks
    Wait(Config.FranknTank)
    for k,v in pairs(fireworklist) do
        StopParticleFxLooped(v, true)
    end
end)

------------------------------------------------USA SMOKE SIGNAL------------------------------------------------------------------------

RegisterNetEvent('fireworks:usasmokesignal')
AddEventHandler('fireworks:usasmokesignal', function(_source)
    local _source = source
    local ped = PlayerPedId()
    local locations = {
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,0.0,0.0)},--red
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(0.0,0.0,1.0)},--blue
    }
    RequestNamedPtfxAsset(GetHashKey('SCR_ADV_SOK'))
    while not HasNamedPtfxAssetLoaded(GetHashKey('SCR_ADV_SOK')) do
        Wait(10)
    end
    for k,v in pairs(locations) do
        usasmokesignal(v.location, v.rgb)
    end
    Wait(smokeduration*1000)
    for k,v in pairs(coloredsmoke) do
        StopParticleFxLooped(v, true)
    end
end)

function usasmokesignal(location, rgb)
    UseParticleFxAsset("SCR_ADV_SOK")
    smoke = StartParticleFxLoopedAtCoord("scr_adv_sok_torchsmoke", location, 0.0,0.0,0.0, 3.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, smoke, 10.0)
    SetParticleFxLoopedAlpha(smoke, 1.0)
    SetParticleFxLoopedColour(smoke, rgb, false)
    table.insert(coloredsmoke, smoke)
end

------------------------------------------------SMOKE SIGNAL------------------------------------------------------------------------

RegisterNetEvent('fireworks:smokesignal')
AddEventHandler('fireworks:smokesignal', function(_source)
    local _source = source
    local ped = PlayerPedId()
    local locations = {
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
    }
    RequestNamedPtfxAsset(GetHashKey('SCR_ADV_SOK'))
    while not HasNamedPtfxAssetLoaded(GetHashKey('SCR_ADV_SOK')) do
        Wait(10)
    end
    for k,v in pairs(locations) do
        smokesignal(v.location, v.rgb)
    end
    Wait(smokeduration*1000)
    for k,v in pairs(coloredsmoke) do
        StopParticleFxLooped(v, true)
    end
end)

function smokesignal(location, rgb)
    UseParticleFxAsset("SCR_ADV_SOK")
    smoke = StartParticleFxLoopedAtCoord("scr_adv_sok_torchsmoke", location, 0.0,0.0,0.0, 3.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, smoke, 10.0)
    SetParticleFxLoopedAlpha(smoke, 1.0)
    SetParticleFxLoopedColour(smoke, rgb, false)
    table.insert(coloredsmoke, smoke)
end