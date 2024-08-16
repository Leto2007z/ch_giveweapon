RegisterNetEvent('ch_giveweapon', function (weaponName)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)

    GiveWeaponToPed(playerPed, weaponName, -1, true, false)
end)