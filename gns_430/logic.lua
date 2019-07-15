-- Set the positions of the Garmin units as needed
-- For the Piper PA-28, the GNS-530 is on top of the GNS-430
local gns_430_unit = 2

gns_430_button_com = hw_button_add("GNS-430 Comm Volume & Squelch",function()
    print("GNS-430 Comm Volume & Squelch")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_cvol")
end)

gns_430_button_vlc = hw_button_add("GNS-430 VLOC (VOR / Localizer) ID Volume & Squelch",function()
    print("GNS-430 VLOC (VOR / Localizer) ID Volume & Squelch")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_vvol")
end)

gns_430_button_swc = hw_button_add("GNS-430 Comm Frequency Flip-Flop Key",function()
    print("GNS-430 Comm Frequency Flip-Flop Key")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_com_ff")
end)

gns_430_button_swn = hw_button_add("GNS-430 VLOC (VOR / Localizer) Frequency Flip-Flop Key",function()
    print("GNS-430 VLOC (VOR / Localizer) Frequency Flip-Flop Key")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_nav_ff")
end)

gns_430_button_cdi = hw_button_add("GNS-430 Course Deviation Indicator (CDI) button",function()
    print("GNS-430 Course Deviation Indicator (CDI) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_cdi")
end)

gns_430_button_obs = hw_button_add("GNS-430 Omni Bearing Selector (OBS) button",function()
    print("GNS-430 Omni Bearing Selector (OBS) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_obs")
end)

gns_430_button_msg = hw_button_add("GNS-430 Message (MSG) button",function()
    print("GNS-430 Message (MSG) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_msg")
end)

gns_430_button_fpl = hw_button_add("GNS-430 Flight Plan (FPL) button",function()
    print("GNS-430 Flight Plan (FPL) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_fpl")
end)

gns_430_button_prc = hw_button_add("GNS-430 Procedures (PROC) button",function()
    print("GNS-430 Procedures (PROC) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_proc")
end)

gns_430_button_rup = hw_button_add("GNS-430 Range (RNG) button - zoom out",function()
    print("GNS-430 Range (RNG) button - zoom out")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_zoom_out")
end)

gns_430_button_rdn = hw_button_add("GNS-430 Range (RNG) button - zoom in",function()
    print("GNS-430 Range (RNG) button - zoom in")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_zoom_in")
end)

gns_430_button_dir = hw_button_add("GNS-430 Direct To button",function()
    print("GNS-430 Direct To button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_direct")
end)

gns_430_button_men = hw_button_add("GNS-430 MENU button",function()
    print("GNS-430 MENU button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_menu")
end)

gns_430_button_ent = hw_button_add("GNS-430 Enter (ENT) button",function()
    print("GNS-430 Enter (ENT) button")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_ent")
end)

-- Clear (CLR) button
function gns_430_callback_clr_down()
    print("GNS-430 Clear (CLR) button depressed")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_clr", 1)
end
function gns_430_callback_clr_up()
    print("GNS-430 Clear (CLR) button released")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_clr", 0)
end

gns_430_button_clr = hw_button_add("GNS-430 Clear (CLR) button",gns_430_callback_clr_down,gns_430_callback_clr_up)

-- Dial Comm / VLOC Rotary Control
gns_430_dial_cv_big = hw_dial_add("GNS-430 Comm / VLOC Outer Rotary Control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("GNS-430 Comm / VLOC Outer Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_coarse_up")
    elseif direction == -1 then
        print("GNS-430 Comm / VLOC Outer Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_coarse_down")
    end
end)

gns_430_dial_cv_sml = hw_dial_add("GNS-430 Comm / VLOC Inner Rotary Control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("GNS-430 Comm / VLOC Inner Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_fine_up")
    elseif direction == -1 then
        print("GNS-430 Comm / VLOC Inner Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_fine_down")
    end
end)

gns_430_button_pcv = hw_button_add("GNS-430 Comm / VLOC Inner Rotary Control Center (Push Button)",function()
    print("GNS-430 Comm / VLOC Inner Rotary Control Center (Push Button)")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_nav_com_tog")
end)

-- Dial GPS Rotary Control
gns_430_dial_cr_big = hw_dial_add("GNS-430 GPS Outer Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-430 GPS Outer Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_chapter_up")
    elseif direction == -1 then
        print("GNS-430 GPS Outer Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_chapter_dn")
    end
end)

gns_430_dial_cr_sml = hw_dial_add("GNS-430 GPS Inner Rotary Control",function(direction)
    if direction == 1 then
        print("GNS-430 GPS Inner Rotary Control - up")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_page_up")
    elseif direction == -1 then
        print("GNS-430 GPS Inner Rotary Control - down")
        xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_page_dn")
    end
end)

gns_430_button_pcr = hw_button_add("GNS-430 GPS Inner Rotary Control Center (Cursor Button)",function()
    print("GNS-430 GPS Inner Rotary Control Center (Cursor Button)")
    xpl_command("sim/GPS/g430n" .. gns_430_unit .. "_cursor")
end)