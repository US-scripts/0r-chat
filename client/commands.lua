RegisterKeyMapping("+chat", "Show chat", "KEYBOARD", Config.ShowChatKey)
RegisterCommand("+chat", function()
    TriggerEvent("chat:show")
end)

RegisterCommand("me", function(source, args, rawCommand)
    local text = ""
    for _, v in ipairs(args) do
        text = text .. " " .. v
    end

    if text:len() == 0 then
        return
    end

    local haveMask = false
    if GetPedDrawableVariation(GetPlayerPed(-1), 1) == 0 then
        haveMask = false
    else
        haveMask = true
    end
    Koci.Client:TriggerServerCallback("0r-chat:registerRPText",
        {
            type = "ME",
            color = Config.TypeColors["me"].color,
            borderColor = Config.TypeColors["me"].background,
            haveMask = haveMask,
            text = text,
            sourceId = GetPlayerServerId(PlayerId()),
            channel = "local",
        })
end)

RegisterCommand("do", function(source, args, rawCommand)
    local text = ""
    for _, v in ipairs(args) do
        text = text .. " " .. v
    end

    if text:len() == 0 then
        return
    end

    local haveMask = false
    if GetPedDrawableVariation(GetPlayerPed(-1), 1) == 0 then
        haveMask = false
    else
        haveMask = true
    end

    Koci.Client:TriggerServerCallback("0r-chat:registerRPText",
        {
            type = "DO",
            color = Config.TypeColors["do"].color,
            borderColor = Config.TypeColors["do"].background,
            haveMask = haveMask,
            text = text,
            sourceId = GetPlayerServerId(PlayerId()),
            channel = "local",
        })
end)

