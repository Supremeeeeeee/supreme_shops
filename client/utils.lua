local animation = true
local animationtime = 1500

--BLIPS
Citizen.CreateThread(function()
	
	for k,v in pairs(Config.Shops) do
		
		local blip = AddBlipForCoord(v.coords)
		SetBlipSprite (blip, Config.Sprite)
		SetBlipScale  (blip, Config.Scale)
		SetBlipDisplay(blip, Config.Display)
		SetBlipColour (blip, Config.Colour)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.ShopName)
		EndTextCommandSetBlipName(blip)
	end

end)

--Animation
function playAnim(animDict, animName, duration)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
	TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
	RemoveAnimDict(animDict)
  end
  
  AddEventHandler('animation', function ()
	if animation then 
		playAnim('mp_common', 'givetake1_a', animationtime)
		Citizen.Wait(animationtime)
	end
  end)

--Client Trigger
RegisterNetEvent('supreme_shops:BuyItem')
AddEventHandler('supreme_shops:BuyItem', function(data)
    local itemName = data.itemName
    local price = data.price
    local amount = data.amount
	TriggerEvent('animation')
    TriggerServerEvent('supreme_shops:ItemBuy', itemName, price, amount)

end)