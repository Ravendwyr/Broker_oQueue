
local name, oQueueLDB = ...


LibStub("LibDataBroker-1.1"):NewDataObject(name, oQueueLDB)

oQueueLDB.type = "launcher"
oQueueLDB.icon = "Interface\\AddOns\\oQueue\\art\\oq_button"
oQueueLDB.text = "oQueue"


function oQueueLDB:OnClick(button)
	OQ_buttonShow(self, button, false)
end

function oQueueLDB:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
	GameTooltip:ClearLines()

	GameTooltip:SetText("oQueue")
	GameTooltip:AddLine("|cffeda55fLeft-click|r to toggle main UI.")
	GameTooltip:AddLine("|cffeda55fRight-click|r for options.")

	GameTooltip:Show()
end


oQueueLDB.OnLeave = GameTooltip_Hide
