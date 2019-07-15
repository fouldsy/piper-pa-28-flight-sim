-- Set the positions of the Garmin units as needed
-- For the Piper PA-28, the GNS-530 is on top of the GNS-430
local gns_530_unit = 1

gns_530_button_com = hw_button_add("GNS-530 Comm Volume & Squelch",function()
    print("GNS-530 Comm Volume & Squelch")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_cvol")
end)

gns_530_button_vlc = hw_button_add("GNS-530 VLOC (VOR / Localizer) ID Volume & Squelch",function()
    print("GNS-530 VLOC (VOR / Localizer) ID Volume & Squelch")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_vvol")
end)

gns_530_button_swc = hw_button_add("GNS-530 Comm Frequency Flip-Flop Key",function()
    print("GNS-530 Comm Frequency Flip-Flop Key")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_com_ff")
end)

gns_530_button_swn = hw_button_add("GNS-530 VLOC (VOR / Localizer) Frequency Flip-Flop Key",function()
    print("GNS-530 VLOC (VOR / Localizer) Frequency Flip-Flop Key")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_nav_ff")
end)

gns_530_button_cdi = hw_button_add("GNS-530 Course Deviation Indicator (CDI) button",function()
    print("GNS-530 Course Deviation Indicator (CDI) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_cdi")
end)

gns_530_button_obs = hw_button_add("GNS-530 Omni Bearing Selector (OBS) button",function()
    print("GNS-530 Omni Bearing Selector (OBS) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_obs")
end)

gns_530_button_msg = hw_button_add("GNS-530 Message (MSG) button",function()
    print("GNS-530 Message (MSG) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_msg")
end)

gns_530_button_fpl = hw_button_add("GNS-530 Flight Plan (FPL) button",function()
    print("GNS-530 Flight Plan (FPL) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_fpl")
end)

gns_530_button_vnav = hw_button_add("GNS-530 Vertical Navigation (VNAV) button",function()
    print("GNS-530 Vertical Navigation (VNAV) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_vnav")
end)

gns_530_button_prc = hw_button_add("GNS-530 Procedures (PROC) button",function()
    print("GNS-530 Procedures (PROC) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_proc")
end)

gns_530_button_rup = hw_button_add("GNS-530 Range (RNG) button - zoom out",function()
    print("GNS-530 Range (RNG) button - zoom out")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_zoom_out")
end)

gns_530_button_rdn = hw_button_add("GNS-530 Range (RNG) button - zoom in",function()
    print("GNS-530 Range (RNG) button - zoom in")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_zoom_in")
end)

gns_530_button_dir = hw_button_add("GNS-530 Direct To button",function()
    print("GNS-530 Direct To button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_direct")
end)

gns_530_button_men = hw_button_add("GNS-530 MENU button",function()
    print("GNS-530 MENU button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_menu")
end)

gns_530_button_ent = hw_button_add("GNS-530 Enter (ENT) button",function()
    print("GNS-530 Enter (ENT) button")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_ent")
end)

-- Clear (CLR) button
function gns_530_callback_clr_down()
    print("GNS-530 Clear (CLR) button depressed")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_clr", 1)
end
function gns_530_callback_clr_up()
    print("GNS-530 Clear (CLR) button released")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_clr", 0)
end

gns_530_button_clr = hw_button_add("GNS-530 Clear (CLR) button",gns_530_callback_clr_down,gns_530_callback_clr_up)

-- Dial Comm / VLOC Rotary Control
gns_530_dial_cv_big = hw_dial_add("GNS-530 Comm / VLOC Outer Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-530 Comm / VLOC Outer Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_coarse_up")
    elseif direction == -1 then
        print("GNS-530 Comm / VLOC Outer Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_coarse_down")
    end
end)

gns_530_dial_cv_sml = hw_dial_add("GNS-530 Comm / VLOC Inner Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-530 Comm / VLOC Inner Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_fine_up")
    elseif direction == -1 then
        print("GNS-530 Comm / VLOC Inner Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_fine_down")
    end
end)

gns_530_button_pcv = hw_button_add("GNS-530 Comm / VLOC Inner Rotary Control Center (Push Button)",function()
    print("GNS-530 Comm / VLOC Inner Rotary Control Center (Push Button)")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_nav_com_tog")
end)

-- Dial GPS Rotary Control
gns_530_dial_cr_big = hw_dial_add("GNS-530 GPS Outer Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-530 GPS Outer Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_chapter_up")
    elseif direction == -1 then
        print("GNS-530 GPS Outer Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_chapter_dn")
    end
end)

gns_530_dial_cr_sml = hw_dial_add("GNS-530 GPS Inner Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-530 GPS Inner Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_page_up")
    elseif direction == -1 then
        print("GNS-530 GPS Inner Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_page_dn")
    end
end)

gns_530_button_pcr = hw_button_add("GNS-530 GPS Inner Rotary Control Center (Cursor Button)",function()
    print("GNS-530 GPS Inner Rotary Control Center (Cursor Button)")
    xpl_command("sim/GPS/g430n" .. gns_530_unit .. "_cursor")
end)