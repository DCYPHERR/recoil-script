--Harkirat Singh // DCYPHERR // LOGITECH RECOIL SCRIPT 
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        ReleaseMouseButton(2) 
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
        recoilx4 = not recoilx4
        spot = not spot
    end
   if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and recoilx4) then
        if recoilx4 then
            repeat
                Sleep(8)
                MoveMouseRelative(0, 3)
                Sleep(8)
                MoveMouseRelative(-2, 0)
                Sleep(8)
                MoveMouseRelative(2, 0)
                Sleep(8)
                MoveMouseRelative(0, 3)
            until not IsMouseButtonPressed(1)
        end
end
end