-- globals --
data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent("fireworks:SingleUse")
AddEventHandler("fireworks:SingleUse", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:SingleUse', -1, _source)
end)

RegisterServerEvent("RegisterUsableItem:firework")
AddEventHandler("RegisterUsableItem:firework", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:SingleUse', -1, _source)
	local ItemData = data.getItem(_source, 'firework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:Barrage")
AddEventHandler("fireworks:Barrage", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:Barrage', -1, _source)
end)

RegisterServerEvent("RegisterUsableItem:bfirework")
AddEventHandler("RegisterUsableItem:bfirework", function(source)
    local _source = source
	TriggerClientEvent('fireworks:Barrage', -1, _source)
	local ItemData = data.getItem(_source, 'bfirework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:MakeAmericaGreatAgain")
AddEventHandler("fireworks:MakeAmericaGreatAgain", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:MakeAmericaGreatAgain', -1, _source)
end)

RegisterServerEvent("RegisterUsableItem:ffirework")
AddEventHandler("RegisterUsableItem:ffirework", function(source)
    local _source = source
	TriggerClientEvent('fireworks:MakeAmericaGreatAgain', -1, _source)
	local ItemData = data.getItem(_source, 'ffirework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:smokesignal")
AddEventHandler("fireworks:smokesignal", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:smokesignal', -1, _source)
end)

RegisterServerEvent("RegisterUsableItem:smokesignal")
AddEventHandler("RegisterUsableItem:smokesignal", function(source)
    local _source = source
    TriggerClientEvent('fireworks:smokesignal', -1, _source)
	local ItemData = data.getItem(_source, 'smokesignal')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:usasmokesignal")
AddEventHandler("fireworks:usasmokesignal", function(_source)
    local _source = source
	TriggerClientEvent('fireworks:usasmokesignal', -1, _source)
end)

RegisterServerEvent("RegisterUsableItem:usasmokesignal")
AddEventHandler("RegisterUsableItem:usasmokesignal", function(source)
    local _source = source
    TriggerClientEvent('fireworks:usasmokesignal', -1, _source)
	local ItemData = data.getItem(_source, 'usasmokesignal')
	ItemData.RemoveItem(1)
end)