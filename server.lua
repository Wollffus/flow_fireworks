-- globals --
data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

local usableitems = {
	["firework"] = { 
		eventname = "fireworks:SingleUse",
		useditemevent = "client_fireworks:SingleUse",
	},
	["bfirework"] = { 
		eventname = "fireworks:Barrage",
		useditemevent = "client_fireworks:Barrage",
	},
	["ffirework"] = { 
		eventname = "fireworks:MakeAmericaGreatAgain",
		useditemevent = "client_fireworks:MakeAmericaGreatAgain",
	},
	["smokesignal"] = { 
		eventname = "fireworks:smokesignal",
		useditemevent = "client_fireworks:smokesignal",
	},
	["usasmokesignal"] = { 
		eventname = "fireworks:usasmokesignal",
		useditemevent = "client_fireworks:usasmokesignal",
	},
}

for k,l in pairs(usableitems)do
	RegisterServerEvent("RegisterUsableItem:"..k)
	AddEventHandler("RegisterUsableItem:"..k, function(source)
		local _source = source
		local ItemData = data.getItem(_source, k)
		ItemData.RemoveItem(1)
		TriggerClientEvent(l.useditemevent, _source)
	end)

	RegisterServerEvent(l.eventname)
	AddEventHandler(l.eventname, function(coords)
		local _source = source
		TriggerClientEvent(l.eventname, -1, coords)
	end)
end