DEFAULT_CHAT_FRAME:AddMessage("TrashLoot: Zul'Gurub Edition is collectin' coins and bijous for ya mon!", 1, 0, 1);
 = CreateFrame("Frame")
TrashLoot_ZG:RegisterEvent("START_LOOT_ROLL") 
TrashLoot_ZG:RegisterEvent("LOOT_BIND_CONFIRM")
TrashLoot_ZG:RegisterEvent("ZONE_CHANGED_NEW_AREA")
TrashLoot_ZG:SetScript("OnEvent", function()
    if event == "START_LOOT_ROLL" then
        local rollID, rollTime, rollItemLink, rollQuantity, rollPlayer = arg1, arg2, arg3, arg4, arg5
		local texture, name, count, quality = GetLootRollItemInfo(rollID)
        if GetZoneText() == "Zul'Gurub" and (name == "Blue Hakkari Bijou" or name == "Bronze Hakkari Bijou" or name == "Gold Hakkari Bijou" or name == "Green Hakkari Bijou" or name == "Orange Hakkari Bijou" or name == "Purple Hakkari Bijou" or name == "Red Hakkari Bijou" or name == "Silver Hakkari Bijou" or name == "Yellow Hakkari Bijou" or name == "Bloodscalp Coin" or name == "Gurubashi Coin" or name == "Hakkari Coin" or name == "Razzashi Coin" or name == "Sandfury Coin" or name == "Skullsplitter Coin" or name == "Vilebranch Coin" or name == "Witherbark Coin" or name == "Zulian Coin") then
            RollOnLoot(rollID, 1)
			end
        end	
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		if GetRealZoneText() == "Zul'Gurub" then
			DEFAULT_CHAT_FRAME:AddMessage("Ey mon you're in "..GetRealZoneText().."! Time ta auto-need on da coins and bijous!")
		end
	end
end)