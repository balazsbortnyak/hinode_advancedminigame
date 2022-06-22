AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        CreateThread(function()
            local coords1 = Config.Ped1COORD
            local model1 = Config.Ped1TYPE
            local heading1 = Config.Ped1HEADING
            RequestCollisionAtCoord(coords1)
            RequestModel(model1)
            while not HasModelLoaded(model1) do
                Wait(50)
            end
            Ped1 = CreatePed('CIVMALE', model1, coords1, heading1, true, true)
            ClearPedTask(Ped1)
            FreezeEntityPosition(Ped1, true)
            SetBlockingOfNonTemporaryEvents(Ped1, true)
 
        end)
    end 
end)

AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        CreateThread(function()
            local coords2 = Config.Ped2COORD
            local model2 = Config.Ped2TYPE
            local heading2 = Config.Ped2HEADING
            RequestCollisionAtCoord(coords2)
            RequestModel(model2)
            while not HasModelLoaded(model2) do
                Wait(50)
            end
            Ped2 = CreatePed('CIVMALE', model2, coords2, heading2, true, true)
            ClearPedTask(Ped2)
            FreezeEntityPosition(Ped2, true)
            SetBlockingOfNonTemporaryEvents(Ped2, true)
 
        end)
    end 
end)

AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        CreateThread(function()
            local coords3 = Config.Ped3COORD
            local model3 = Config.Ped3TYPE
            local heading3 = Config.Ped3HEADING
            RequestCollisionAtCoord(coords3)
            RequestModel(model3)
            while not HasModelLoaded(model3) do
                Wait(50)
            end
            Ped3 = CreatePed('CIVMALE', model3, coords3, heading3, true, true)
            ClearPedTask(Ped3)
            FreezeEntityPosition(Ped3, true)
            SetBlockingOfNonTemporaryEvents(Ped3, true)
 
        end)
    end 
end)


AddEventHandler('onResourceStop', function (resource)
    if resource == GetCurrentResourceName() then
        SetEntityAsMissionEntity(Ped1, false, true)
        SetEntityAsMissionEntity(Ped2, false, true)
        SetEntityAsMissionEntity(Ped3, false, true)
        DeleteEntity(Ped1)
        DeleteEntity(Ped2)
        DeleteEntity(Ped3)
    end  
end)

Citizen.CreateThread(function()
    local alreadyEnteredZone = false
    local text = nil
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false
        local dist = #(GetEntityCoords(ped)- Config.Ped1COORD) 
        if dist <= 3.0 then
            wait = 5
            inZone  = true
            text = '<b>AdvancedMinigame</b></p>[E] Press E to play'
        
        

            local clientprint = Config.ClientPrintText
            local clienttextarg = Config.ClientTextArg
            local clienttextcolor = Config.ClientTextColor
            local amountmoney = Config.Moneygive
            local wintext = Config.Wintext
            local losetext = Config.Losetext


            if IsControlJustReleased(0, 38) then
                local example = exports['cd_keymaster']:StartKeyMaster(CustomSettings)
                print(Config.ClientPrintText)
                TriggerEvent('chat:addMessage', {
                    color = { Config.ClientTextColor},
                    multiline = true,
                    args = {Config.ClientTextArg, Config.ClientPrintText}
                  })
                  
                    if example then
                        print(Config.Wintext)
                        TriggerServerEvent('moneygive',Config.Moneygive)
                    else
                        print(Config.Losetext)
                    end
            end
        else
            wait = 2000
        end
        
        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            TriggerEvent('cd_drawtextui:HideUI')
        end
        Citizen.Wait(wait)
    end
end)   

Citizen.CreateThread(function()
    local alreadyEnteredZone = false
    local text = nil
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false
        local dist2 = #(GetEntityCoords(ped)- Config.Ped2COORD) 
        if dist2 <= 3.0 then
            wait = 5
            inZone  = true
            text = '<b>AdvancedMinigame</b></p>[E] Press E to play'
        
        

            local clientprint = Config.ClientPrintText
            local clienttextarg = Config.ClientTextArg
            local clienttextcolor = Config.ClientTextColor
            local amountmoney = Config.Moneygive
            local wintext = Config.Wintext
            local losetext = Config.Losetext


            if IsControlJustReleased(0, 38) then
                local example = exports['cd_keymaster']:StartKeyMaster(CustomSettings)
                print(Config.ClientPrintText)
                TriggerEvent('chat:addMessage', {
                    color = { Config.ClientTextColor},
                    multiline = true,
                    args = {Config.ClientTextArg, Config.ClientPrintText}
                  })
                  
                    if example then
                        print(Config.Wintext)
                        TriggerServerEvent('moneygive',Config.Moneygive)
                    else
                        print(Config.Losetext)
                    end
            end
        else
            wait = 2000
        end
        
        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            TriggerEvent('cd_drawtextui:HideUI')
        end
        Citizen.Wait(wait)
    end
end)   

Citizen.CreateThread(function()
    local alreadyEnteredZone = false
    local text = nil
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false
        local dist3 = #(GetEntityCoords(ped)- Config.Ped3COORD) 
        if dist3 <= 3.0 then
            wait = 5
            inZone  = true
            text = '<b>AdvancedMinigame</b></p>[E] Press E to play'
        
        

            local clientprint = Config.ClientPrintText
            local clienttextarg = Config.ClientTextArg
            local clienttextcolor = Config.ClientTextColor
            local amountmoney = Config.Moneygive
            local wintext = Config.Wintext
            local losetext = Config.Losetext


            if IsControlJustReleased(0, 38) then
                local example = exports['cd_keymaster']:StartKeyMaster(CustomSettings)
                print(Config.ClientPrintText)
                TriggerEvent('chat:addMessage', {
                    color = { Config.ClientTextColor},
                    multiline = true,
                    args = {Config.ClientTextArg, Config.ClientPrintText}
                  })
                  
                    if example then
                        print(Config.Wintext)
                        TriggerServerEvent('moneygive',Config.Moneygive)
                    else
                        print(Config.Losetext)
                    end
            end
        else
            wait = 2000
        end
        
        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            TriggerEvent('cd_drawtextui:HideUI')
        end
        Citizen.Wait(wait)
    end
end)   