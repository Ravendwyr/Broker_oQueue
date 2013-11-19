
local name, oQueueLDB = ...

-- stolen without permission from SlashIn
local MacroEditBox = MacroEditBox
local MacroEditBox_OnEvent = MacroEditBox:GetScript("OnEvent")


LibStub("LibDataBroker-1.1"):NewDataObject(name, oQueueLDB)

oQueueLDB.type = "launcher"
oQueueLDB.icon = "Interface\\AddOns\\oQueue\\art\\oq_button"
oQueueLDB.text = "oQueue"


function oQueueLDB:OnClick(button)
	if IsShiftKeyDown() then
		MacroEditBox_OnEvent(MacroEditBox, "EXECUTE_CHAT_LINE", "/oq mini")
	else
		OQ_buttonShow(self, button, false)

		if button == "RightButton" then
			oqmenu:SetClampedToScreen(true)
		end
	end
end

function oQueueLDB:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
	GameTooltip:ClearLines()

	GameTooltip:SetText("oQueue")
	GameTooltip:AddLine("|cffeda55fLeft-click|r to toggle main UI.")
	GameTooltip:AddLine("|cffeda55fShift-click|r to toggle minimap button.")
	GameTooltip:AddLine("|cffeda55fRight-click|r for menu.")

	GameTooltip:Show()
end


oQueueLDB.OnLeave = GameTooltip_Hide
