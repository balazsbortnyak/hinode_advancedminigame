ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterNetEvent('moneygive', function(amount)
    local playerid, identifier = source
    local xPlayer = ESX.GetPlayerFromID(playerid)
    xPlayer.addAccountMoney('money', amount)

end)