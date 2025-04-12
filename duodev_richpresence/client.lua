Citizen.CreateThread(function()
    while true do
        SetDiscordAppId(YOUR_APP_ID) -- Use your own Discord App ID here, if you don't have one, create a new application on the Discord Developer Portal and get the App ID.
        
        local players = #GetActivePlayers()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local streetName, crossingRoad = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
        local location = GetStreetNameFromHashKey(streetName)
        
        SetRichPresence("Players: " .. players .. "/64 | Location: " .. location) -- Set the rich presence text, you can customize this to show whatever you want.
        
        SetDiscordRichPresenceAsset("your_large_asset") -- The large image name, leave this deafult and name you asset your_large_asset, no need to use
        SetDiscordRichPresenceAssetText("Csatlakozz a szerverre!") -- Large image text, this will be shown when you hover over the large image, no need to use
        
        SetDiscordRichPresenceAssetSmall("your_small_asset") -- The small image name, leave this deafult and name you asset your_small_asset, no need to use
        SetDiscordRichPresenceAssetSmallText("Your Server Name") -- Small image text, this will be shown when you hover over the small image, no need to use
        
        SetDiscordRichPresenceAction(0, "Csatlakozás", "fivem://connect/yourserverip") -- Link your server here, use the fivem://connect/yourserverip. Don't use the :30120 port, just the IP.
        SetDiscordRichPresenceAction(1, "Discord Szerver", "https://discord.gg/yourdiscordlink") -- Link your Discord server here
        
        Citizen.Wait(60000) -- Wait for 60 seconds before updating the rich presence again, you can change this to whatever you want.
    end
end)
