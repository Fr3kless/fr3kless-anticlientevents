for k, v in pairs(Config.Fr3klessAntiClientEvents.ProtectedEvents) do
    RegisterNetEvent(v)
    AddEventHandler(v, function()
        local rscInv = GetInvokingResource()
        if rscInv == "esx_ambulancejob" or rscInv == "es_extended" and v == "playerSpawned" then return end -- detecting native revive for some shitty menu's 
        if rscInv ~= nil then
            local reason = "Detected Protected Client Event by Fr3kless-AntiClientEvents - "..v.."."
            BanPlr(reason)
            CancelEvent()
        end
    end)
end

BanPlr = function(reason)
    print('paste here your ban function')
end
