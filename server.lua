RegisterNetEvent('ch_giveweapon', function (weaponName)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    local weaponvalid = IsWeaponValid(weaponName)
    local ammo = GetMaxAmmoInClip(playerPed, weaponName, true)

    if not weaponvalid then
        TriggerClientEvent('chat:addMessage', playerId, {
            msg = {weaponName..' не является оружием.'}
        })
        return
    end

    GiveWeaponToPed(playerPed, weaponName, ammo, true, false)
end)

RegisterNetEvent('ch_giveweaponto', function (targetId)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    local targetPed = GetPlayerPed(targetId)
    local selectedWeapon = GetSelectedPedWeapon(playerPed)

    if not selectedWeapon then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = {'Возьмите в руки оружие, которое хотите передать.'}
        })
        return
    end

    local ammo = GetAmmoInPedWeapon(playerPed, selectedWeapon)

    RemoveWeaponFromPed(playerPed, selectedWeapon)
    GiveWeaponToPed(targetPed, selectedWeapon, ammo, false, true)
end)
