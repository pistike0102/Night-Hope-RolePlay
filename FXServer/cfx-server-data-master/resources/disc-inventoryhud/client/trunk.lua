local trunkSecondaryInventory = {
    type = 'trunk',
    owner = 'XYZ123'
}

local openVehicle

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, Config.TrunkOpenControl) then
            local vehicle = ESX.Game.GetVehicleInDirection()
            if DoesEntityExist(vehicle) then
                local locked = GetVehicleDoorLockStatus(vehicle) == 2
                local hasBoot = DoesVehicleHaveDoor(vehicle, 5)
                if not locked then
                    local boneIndex = GetEntityBoneIndexByName(vehicle, 'platelight')
                    local vehicleCoords = GetWorldPositionOfEntityBone(vehicle, boneIndex)
                    local playerCoords = GetEntityCoords(GetPlayerPed(-1))
                    local distance = GetDistanceBetweenCoords(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, playerCoords.x, playerCoords.y, playerCoords.z, true)
                    if distance < 3 then
                        trunkSecondaryInventory.owner = GetVehicleNumberPlateText(vehicle)
                        openVehicle = vehicle
                        local class = GetVehicleClass(vehicle)
                        trunkSecondaryInventory.type = 'trunk-' .. class
                        SetVehicleDoorOpen(openVehicle, 5, false)
                        openInventory(trunkSecondaryInventory)
                        local playerPed = GetPlayerPed(-1)
                        if not IsEntityPlayingAnim(playerPed, 'mini@repair', 'fixing_a_player', 3) then
                            ESX.Streaming.RequestAnimDict('mini@repair', function()
                                TaskPlayAnim(playerPed, 'mini@repair', 'fixing_a_player', 8.0, -8, -1, 49, 0, 0, 0, 0)
                            end)
                        end
                    end
                end
            end
        end
    end
end
)

RegisterNUICallback('NUIFocusOff', function()
    if openVehicle ~= nil then
        SetVehicleDoorShut(openVehicle, 5, false)
        openVehicle = nil
        ClearPedSecondaryTask(GetPlayerPed(-1))
    end
end)