RegisterCommand('car', function(source, args )
    local vehicleName = args[1] or 'adder'

    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:addMessage', {
            args = {'Vehicle Not A Valid Model: ' .. vehiclename} 
        })
        return
    end

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(1)
    end

    local playerPed = PlayerPedId()
    local pos = GetEntityCoords(playerPed)
    
    --DO NOT EDIT THE LINE BELOW--
    local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)
    
    --You May Edit--
    SetPedIntoVehicle(playerPed, vehicle, -1)

    SetEntityNoLongerNeeded(vehicle)

    SetModelAsNoLongerNeeded(vehicleName)

    TriggerEvent('chat:addMessage', {
        args = {'You Have Spawned a ' .. vehicleName .. '.'}
    })
end, false)