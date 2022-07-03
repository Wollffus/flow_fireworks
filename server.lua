-- globals --
data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent("fireworks:SingleUse")
AddEventHandler("fireworks:SingleUse", function()
    local _source = source
	TriggerClientEvent('fireworks:SingleUse', _source)
end)

RegisterServerEvent("RegisterUsableItem:firework")
AddEventHandler("RegisterUsableItem:firework", function()
    local _source = source
	TriggerClientEvent('fireworks:SingleUse', _source)
	local ItemData = data.getItem(_source, 'firework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:Barrage")
AddEventHandler("fireworks:Barrage", function()
    local _source = source
	TriggerClientEvent('fireworks:Barrage', _source)
end)

RegisterServerEvent("RegisterUsableItem:bfirework")
AddEventHandler("RegisterUsableItem:bfirework", function()
    local _source = source
	TriggerClientEvent('fireworks:Barrage', _source)
	local ItemData = data.getItem(_source, 'bfirework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:MakeAmericaGreatAgain")
AddEventHandler("fireworks:MakeAmericaGreatAgain", function()
    local _source = source
	TriggerClientEvent('fireworks:MakeAmericaGreatAgain', _source)
end)

RegisterServerEvent("RegisterUsableItem:ffirework")
AddEventHandler("RegisterUsableItem:ffirework", function()
    local _source = source
	TriggerClientEvent('fireworks:MakeAmericaGreatAgain', _source)
	local ItemData = data.getItem(_source, 'ffirework')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:smokesignal")
AddEventHandler("fireworks:smokesignal", function()
    local _source = source
	TriggerClientEvent('fireworks:smokesignal', _source)
end)

RegisterServerEvent("RegisterUsableItem:smokesignal")
AddEventHandler("RegisterUsableItem:smokesignal", function()
    local _source = source
    TriggerClientEvent('fireworks:smokesignal', _source)
	local ItemData = data.getItem(_source, 'smokesignal')
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("fireworks:usasmokesignal")
AddEventHandler("fireworks:usasmokesignal", function()
    local _source = source
	TriggerClientEvent('fireworks:usasmokesignal', _source)
end)

RegisterServerEvent("RegisterUsableItem:usasmokesignal")
AddEventHandler("RegisterUsableItem:usasmokesignal", function()
    local _source = source
    TriggerClientEvent('fireworks:usasmokesignal', _source)
	local ItemData = data.getItem(_source, 'usasmokesignal')
	ItemData.RemoveItem(1)
end)