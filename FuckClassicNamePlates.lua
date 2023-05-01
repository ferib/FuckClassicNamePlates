TargetFrameTextureFrame:SetScript("OnUpdate", function()
    local hp = UnitHealth("target")
    
    if not TargetFrameTextureFrameDeadText:IsVisible() then
       TargetFrameTextureFrameDeadText:Show()
       TargetFrameTextureFrameDeadText:SetWidth(250)
       TargetFrameTextureFrameDeadText:SetTextColor(256, 256, 256)
    end
    
    local text = "Dead"
    if hp > 0 then
       text = string.format("\n%8d / %8d\n%8d / %8d", hp, UnitHealthMax("target"), UnitPower("target"), UnitPowerMax("target"))
    end
    
    TargetFrameTextureFrameDeadText:SetText(text)
end)