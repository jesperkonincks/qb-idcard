-- @uyuyorum qb-idcard {basic} --

QBCore.Functions.CreateUseableItem("id_card", function(source,item)
    TriggerClientEvent('qb-idcard:open', source, item)
end)

QBCore.Functions.CreateCallback('qb-idcard:openInformation', function(source, cb, idcard)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local inf = {
        ['firstname'] = idcard["info"]["firstname"],
        ['lastname'] = idcard["info"]["lastname"],
        ['gender'] = idcard["info"]["gender"],
        ['dob'] = idcard["info"]["birthdate"],
        ['nationality'] = idcard["info"]["nationality"],
        ['fingerprint'] = idcard["info"]["fingerprint"],
    }
    cb(inf)
end)
