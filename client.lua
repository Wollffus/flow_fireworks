------------------------------------------------LOCALS------------------------------------------------------------------------

smokeduration = Config.SmokeTimerinSeconds --Duration of colored smoke in seconds

fireworklist = {}
ParticleFx = {}

------------------------------------------------COMMAND USAGE------------------------------------------------------------------------

if Trigger.Command then

    RegisterCommand(Config.DualShot, function()
        TriggerEvent("client_fireworks:SingleUse")
    end)

    RegisterCommand(Config.Barrage, function()
        TriggerEvent("client_fireworks:Barrage")
    end)

    RegisterCommand(Config.Finale, function()
        TriggerEvent("client_fireworks:MakeAmericaGreatAgain")
    end)

    RegisterCommand(Config.SmokeSignal, function()
        TriggerEvent("client_fireworks:smokesignal")
    end)

    RegisterCommand(Config.USASmokeSignal, function()
        TriggerEvent("client_fireworks:usasmokesignal")
    end)
end

------------------------------------------------SINGLE USE FIREWORK------------------------------------------------------------------------

RegisterNetEvent('fireworks:SingleUse')
AddEventHandler('fireworks:SingleUse', function(coords)
    loadparticlefx("scr_ind1")
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale    
    setparticlefx(fireworks)
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    setparticlefx(groundeffects)
    SetParticleFxLoopedColour(groundeffects, 1.0,0.0,1.0, false) -- This fires two fireworks
    Wait(Config.Wollffus)
    for k,v in pairs(fireworklist) do
        StopParticleFxLooped(v, true)
    end
end)

------------------------------------------------Barrage FIREWORK------------------------------------------------------------------------

RegisterNetEvent('fireworks:Barrage')
AddEventHandler('fireworks:Barrage', function(coords)
    loadparticlefx("scr_ind1")     
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale 
    setparticlefx(fireworks)
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    setparticlefx(groundeffects)

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
AddEventHandler('fireworks:MakeAmericaGreatAgain', function(coords)
    loadparticlefx("scr_ind1")     
    fireworks = StartParticleFxLoopedAtCoord('scr_ind1_firework', coords, 0.0,0.0,0.0, 0.25, false, false, false, true) --the 0.25 here is scale
    setparticlefx(fireworks) 
    groundeffects = StartParticleFxLoopedAtCoord('scr_ind1_firework_lights', coords+vector3(0.0,0.0,2.0), 0.0,0.0,0.0, 2.0, false, false, false, true)
    setparticlefx(groundeffects)
    
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
AddEventHandler('fireworks:usasmokesignal', function(_locations)
    local ped = PlayerPedId()
    local locations = _locations    
    print(json.encode(_locations, {indent = true}))
    loadparticlefx("SCR_ADV_SOK")
    for k,v in pairs(locations) do
        createaSmokeSignal(v.location, v.rgb)
    end
    Wait(smokeduration*1000)
    for k,v in pairs(ParticleFx) do
        StopParticleFxLooped(v, true)
    end
end)
------------------------------------------------SMOKE SIGNAL------------------------------------------------------------------------

RegisterNetEvent('fireworks:smokesignal')
AddEventHandler('fireworks:smokesignal', function(_locations)
    local ped = PlayerPedId()
    local locations = _locations
    loadparticlefx("SCR_ADV_SOK")
    for k,v in pairs(locations) do
        createaSmokeSignal(v.location, v.rgb)
    end
    Wait(smokeduration*1000)
    for k,v in pairs(ParticleFx) do
        StopParticleFxLooped(v, true)
    end
end)

------------------------------ Usable Items -----------------------------------------------------------------------------------
RegisterNetEvent("client_fireworks:SingleUse")
AddEventHandler("client_fireworks:SingleUse",function()
    pedcoords = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('fireworks:SingleUse', pedcoords)
end)

RegisterNetEvent("client_fireworks:Barrage")
AddEventHandler("client_fireworks:Barrage",function()
    pedcoords = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('fireworks:Barrage', pedcoords)
end)

RegisterNetEvent("client_fireworks:MakeAmericaGreatAgain")
AddEventHandler("client_fireworks:MakeAmericaGreatAgain",function()
    pedcoords = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('fireworks:MakeAmericaGreatAgain', pedcoords)
end)

RegisterNetEvent("client_fireworks:smokesignal")
AddEventHandler("client_fireworks:smokesignal",function()
    local ped = PlayerPedId()
    local smokecoords = {
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
    }
    TriggerServerEvent('fireworks:smokesignal', smokecoords)
end)

RegisterNetEvent("client_fireworks:usasmokesignal")
AddEventHandler("client_fireworks:usasmokesignal",function()
    local ped = PlayerPedId()
    local smokecoords = {
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  2.0,0.0,-2.0)), ['rgb']=vector3(1.0,0.0,0.0)},--red
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped,  0.0,0.0,-2.0)), ['rgb']=vector3(1.0,1.0,1.0)},--white
        {['location'] = vector3(GetOffsetFromEntityInWorldCoords(ped, -2.0,0.0,-2.0)), ['rgb']=vector3(0.0,0.0,1.0)},--blue
    }
    TriggerServerEvent('fireworks:usasmokesignal', smokecoords)
end)


AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        for k,v in pairs(ParticleFx) do
            StopParticleFxLooped(v, true)
        end
    end
end)


function createaSmokeSignal(location, rgb)
    UseParticleFxAsset("SCR_ADV_SOK")
    smoke = StartParticleFxLoopedAtCoord("scr_adv_sok_torchsmoke", location, 0.0,0.0,0.0, 3.0, false, false, false, true)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, smoke, 10.0)
    SetParticleFxLoopedAlpha(smoke, 1.0)
    SetParticleFxLoopedColour(smoke, rgb, false)
    table.insert(ParticleFx, smoke)
end

function loadparticlefx(ptfxAsset) 
    RequestNamedPtfxAsset(GetHashKey(ptfxAsset))
    while not HasNamedPtfxAssetLoaded(GetHashKey(ptfxAsset)) do
        Wait(10)
    end
    UseParticleFxAsset(ptfxAsset)    
end

function setparticlefx(startedparticle)
    table.insert(ParticleFx, startedparticle)
    Citizen.InvokeNative(0x9DDC222D85D5AF2A, startedparticle, 10.0)
    SetParticleFxLoopedAlpha(startedparticle, 1.0)
    table.insert(fireworklist, startedparticle)
end