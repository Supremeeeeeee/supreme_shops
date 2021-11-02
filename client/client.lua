ESX = nil

RegisterNetEvent('supreme_shops:OpenMenu', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "Shops",
            txt = ""
        },
        {
            id = 2,
            header = "Water",
            txt = "$5 - $25",
            params = {
                event = "supreme_shops:Water",
                
            }
        },
        {
            id = 3,
            header = "Bread",
            txt = "$10 - $50",
            params = {
                event = "supreme_shops:Bread",
            }
        },
        {
            id = 4,
            header = "Lockpick",
            txt = "$200 - $1000",
            params = {
                event = "supreme_shops:Lockpick",
            }
        },
    })
end)

RegisterNetEvent('supreme_shops:Water', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "supreme_shops:OpenMenu",
                
            }
        },
        {
            id = 2,
            header = "Water",
            txt = "x1",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'water',
                                        price = 5,
                                        amount = 1,
                    
                }
            }
        },
        {
            id = 3,
            header = "Water",
            txt = "x2",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'water',
                                        price = 10,
                                        amount = 2,
                    
                }
            }
        },
        {
            id = 4,
            header = "Water",
            txt = "x3",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'water',
                                        price = 15,
                                        amount = 3,
                    
                }
            }
        },
        {
            id = 5,
            header = "Water",
            txt = "x4",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'water',
                                        price = 20,
                                        amount = 4,
                    
                }
            }
        },
        {
            id = 6,
            header = "Water",
            txt = "x5",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'water',
                                        price = 25,
                                        amount = 5,
                    
                }
            }
        },
    })
end)

RegisterNetEvent('supreme_shops:Bread', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "supreme_shops:OpenMenu",
                
            }
        },
        {
            id = 2,
            header = "Bread",
            txt = "x1",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'bread',
                                        price = 10,
                                        amount = 1,
                    
                }
            }
        },
        {
            id = 3,
            header = "Bread",
            txt = "x2",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'bread',
                                        price = 20,
                                        amount = 2,
                    
                }
            }
        },
        {
            id = 4,
            header = "Bread",
            txt = "x3",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'bread',
                                        price = 30,
                                        amount = 3,
                    
                }
            }
        },
        {
            id = 5,
            header = "Bread",
            txt = "x4",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'bread',
                                        price = 40,
                                        amount = 4,
                    
                }
            }
        },
        {
            id = 6,
            header = "Bread",
            txt = "x5",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'bread',
                                        price = 50,
                                        amount = 5,
                    
                }
            }
        },
    })
end)

RegisterNetEvent('supreme_shops:Lockpick', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "supreme_shops:OpenMenu",
                
            }
        },
        {
            id = 2,
            header = "Lockpick",
            txt = "x1",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'lockpick',
                                        price = 200,
                                        amount = 1,
                    
                }
            }
        },
        {
            id = 3,
            header = "Lockpick",
            txt = "x2",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'lockpick',
                                        price = 400,
                                        amount = 2,
                    
                }
            }
        },
        {
            id = 4,
            header = "Lockpick",
            txt = "x3",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'lockpick',
                                        price = 600,
                                        amount = 3,
                    
                }
            }
        },
        {
            id = 5,
            header = "Lockpick",
            txt = "x4",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'lockpick',
                                        price = 800,
                                        amount = 4,
                    
                }
            }
        },
        {
            id = 6,
            header = "Lockpick",
            txt = "x5",
            params = {
                event = "supreme_shops:BuyItem",
                args = {
                    itemName = 'lockpick',
                                        price = 1000,
                                        amount = 5,
                    
                }
            }
        },
    })
end) 
