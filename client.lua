RegisterCommand('giveweapon', function (player, args)
    local weaponName = args[1]

    if not weaponName then
        TriggerEvent('chat:addMessage', {
            args = {'Введите название оружия.'}
        })
        return
    end

    RegisterNetEvent('ch_giveweapon', weaponName)
    TriggerServerEvent('ch_giveweapon', weaponName)
end)

RegisterCommand ('giveweaponto', function(player,args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args{'Введите ID игрока.'}
        })
        return
    end

    RegisterNetEvent('ch_giveweaponto', targetId)
    TriggerServerEvent('ch_giveweaponto', targetId)
end)
