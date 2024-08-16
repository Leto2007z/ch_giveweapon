RegisterCommand('giveweapon', function (player, args)
    local weaponName = args[1]

    if not args then
        TriggerEvent('chat:addMessage', {
            args = {'Не сущетсвует оружия '..weaponName..'.'}
        })
        return
    end

    RegisterNetEvent('ch_giveweapon', weaponName)
    TriggerServerEvent('ch_giveweapon', weaponName)
end)