ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('supreme_shops:ItemBuy')
AddEventHandler('supreme_shops:ItemBuy', function(itemName, price, amount)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if xPlayer.canCarryItem(itemName, amount) then
		if xPlayer.getMoney() > price then
			xPlayer.addInventoryItem(itemName, amount)
			xPlayer.removeAccountMoney(Config.Account, price)
			--xPlayer.removeMoney(price)
			--TriggerClientEvent('supreme_text:StartText', source)
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You paid ' .. price, })
		else
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Not enough money', })
		end
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Can not carry', })
	end
end)	