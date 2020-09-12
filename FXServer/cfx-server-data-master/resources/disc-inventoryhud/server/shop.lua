Citizen.CreateThread(function()
    TriggerEvent('disc-inventoryhud:RegisterInventory', {
        name = 'shop',
        label = 'Shop',
        slots = 20,
        getInventory = function(identifier, cb)
            getShopInventory(identifier, cb)
        end,
        saveInventory = function(identifier, inventory)

        end,
        getDisplayInventory = function(identifier, cb, source)
            getShopDisplayInventory(identifier, cb, source)
        end
    })
end)

function getShopInventory(identifier, cb)
    local shop = Config.Shops[identifier]
    local items = {}
    for k, v in pairs(shop.items) do
        items[tostring(k)] = v
    end
    cb(items)
end

function getShopDisplayInventory(identifier, cb, source)
    local player = ESX.GetPlayerFromId(source)
    InvType['shop'].getInventory(identifier, function(inventory)
        local itemsObject = {}

        for k, v in pairs(inventory) do
            local esxItem = player.getInventoryItem(v.name)
            local item = createDisplayItem(v, esxItem, tonumber(k), v.price)
            table.insert(itemsObject, item)
        end

        local inv = {
            invId = identifier,
            invTier = InvType['shop'],
            inventory = itemsObject,
        }
        cb(inv)
    end)
end