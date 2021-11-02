local ESX = nil 
local zone = 0

Citizen.CreateThread(function()

  for k,v in pairs(Config.Shops) do
      zone = zone+1
      exports['qtarget']:AddBoxZone(zone, v.coords, 1.2, 1.2, {
          name=zone,
          heading=0,
          debugPoly=false,
          minZ=v.z,
          maxZ=v.z+10
      }, {
          options = {
              {
                  event = "supreme_shops:OpenMenu",
                  icon = "fas fa-shopping-cart",
                  label = "Open Shop"
              },
          },
              job = {"all"},
              distance = 6
      })             
  end

end)
