-- Garmin G1000 for the pilot side
-- This is referenced as device g1000n1_

g1000_pilot_button_nav_ff = hw_button_add("G1000 pilot NAV flip flop",function()
    print("G1000 pilot NAV flip flop")
    xpl_command("sim/GPS/g1000n1_nav_ff")
end)

-- NAV rotary control
g1000_pilot_dial_nav_big = hw_dial_add("G1000 pilot NAV outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot NAV outer ring tune up")
        xpl_command("sim/GPS/g1000n1_nav_outer_up")
    elseif direction == -1 then
        print("G1000 pilot NAV outer ring tune down")
        xpl_command("sim/GPS/g1000n1_nav_outer_down")
    end
end)

g1000_pilot_dial_nav_sml = hw_dial_add("G1000 pilot NAV inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot NAV inner ring tune up")
        xpl_command("sim/GPS/g1000n1_nav_inner_up")
    elseif direction == -1 then
        print("G1000 pilot NAV inner ring tune down")
        xpl_command("sim/GPS/g1000n1_nav_inner_down")
    end
end)

g1000_pilot_button_nav12 = hw_button_add("G1000 pilot PFD NAV 1/2 center (push button)",function()
    print("G1000 pilot PFD NAV 1/2 center (push button)")
    xpl_command("sim/GPS/g1000n1_nav12")
end)
-- End NAV rotary control

-- HDG rotary control
g1000_pilot_dial_hdg = hw_dial_add("G1000 pilot HDG rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot HDG up")
        xpl_command("sim/GPS/g1000n1_hdg_up")
    elseif direction == -1 then
        print("G1000 pilot HDG down")
        xpl_command("sim/GPS/g1000n1_hdg_down")
    end
end)

g1000_pilot_button_hdg_sync = hw_button_add("G1000 pilot HDG sync center (push button)",function()
    print("G1000 pilot HDG sync center (push button)")
    xpl_command("sim/GPS/g1000n1_hdg_sync")
end)
-- End HDG rotary control

-- AP controls
g1000_pilot_button_ap = hw_button_add("G1000 pilot autopilot",function()
    print("G1000 pilot autopilot")
    xpl_command("sim/GPS/g1000n1_ap")
end)

g1000_pilot_button_fd = hw_button_add("G1000 pilot flight director",function()
    print("G1000 pilot flight director")
    xpl_command("sim/GPS/g1000n1_fd")
end)

g1000_pilot_button_hdg = hw_button_add("G1000 pilot AP HDG",function()
    print("G1000 pilot AP HDG")
    xpl_command("sim/GPS/g1000n1_hdg")
end)

g1000_pilot_button_alt = hw_button_add("G1000 pilot AP ALT",function()
    print("G1000 pilot AP ALT")
    xpl_command("sim/GPS/g1000n1_alt")
end)

g1000_pilot_button_nav = hw_button_add("G1000 pilot AP NAV",function()
    print("G1000 pilot AP NAV")
    xpl_command("sim/GPS/g1000n1_nav")
end)		
				
g1000_pilot_button_vnv = hw_button_add("G1000 pilot AP VNAV",function()
    print("G1000 pilot AP VNAV")
    xpl_command("sim/GPS/g1000n1_vnv")
end)		

g1000_pilot_button_apr = hw_button_add("G1000 pilot AP approach",function()
    print("G1000 pilot AP approach")
    xpl_command("sim/GPS/g1000n1_apr")
end)

g1000_pilot_button_bc = hw_button_add("G1000 pilot AP backcourse",function()
    print("G1000 pilot AP backcourse")
    xpl_command("sim/GPS/g1000n1_bc")
end)

g1000_pilot_button_vs = hw_button_add("G1000 pilot AP vertical speed",function()
    print("G1000 pilot AP vertical speed")
    xpl_command("sim/GPS/g1000n1_vs")
end)

g1000_pilot_button_flc = hw_button_add("G1000 pilot AP flight level change",function()
    print("G1000 pilot AP flight level change")
    xpl_command("sim/GPS/g1000n1_flc")
end)

g1000_pilot_button_nose_up = hw_button_add("G1000 pilot AP nose up",function()
    print("G1000 pilot AP nose up")
    xpl_command("sim/GPS/g1000n1_nose_up")
end)

g1000_pilot_button_nose_down = hw_button_add("G1000 pilot AP nose down",function()
    print("G1000 pilot AP nose down")
    xpl_command("sim/GPS/g1000n1_nose_down")
end)

g1000_pilot_dial_alt_outer = hw_dial_add("G1000 pilot altitude outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot altitude outer ring up")
        xpl_command("sim/GPS/g1000n1_alt_outer_up")
    elseif direction == -1 then
        print("G1000 pilot altitude outer ring down")
        xpl_command("sim/GPS/g1000n1_alt_outer_down")
    end
end)

g1000_pilot_dial_alt_inner = hw_dial_add("G1000 pilot altitude inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot altitude inner ring up")
        xpl_command("sim/GPS/g1000n1_alt_inner_up")
    elseif direction == -1 then
        print("G1000 pilot altitude inner ring down")
        xpl_command("sim/GPS/g1000n1_alt_inner_down")
    end
end)
-- End AP controls

-- Softkey controls
g1000_pilot_button_softkey1 = hw_button_add("G1000 pilot PFD Softkey 1",function()
    print("G1000 pilot PFD Softkey 1")
    xpl_command("sim/GPS/g1000n1_softkey1")
end)

g1000_pilot_button_softkey2 = hw_button_add("G1000 pilot PFD Softkey 2",function()
    print("G1000 pilot PFD Softkey 2")
    xpl_command("sim/GPS/g1000n1_softkey2")
end)

g1000_pilot_button_softkey3 = hw_button_add("G1000 pilot PFD Softkey 3",function()
    print("G1000 pilot PFD Softkey 3")
    xpl_command("sim/GPS/g1000n1_softkey3")
end)

g1000_pilot_button_softkey4 = hw_button_add("G1000 pilot PFD Softkey 4",function()
    print("G1000 pilot PFD Softkey 4")
    xpl_command("sim/GPS/g1000n1_softkey4")
end)

g1000_pilot_button_softkey5 = hw_button_add("G1000 pilot PFD Softkey 5",function()
    print("G1000 pilot PFD Softkey 5")
    xpl_command("sim/GPS/g1000n1_softkey5")
end)

g1000_pilot_button_softkey6 = hw_button_add("G1000 pilot PFD Softkey 6",function()
    print("G1000 pilot PFD Softkey 6")
    xpl_command("sim/GPS/g1000n1_softkey6")
end)

g1000_pilot_button_softkey7 = hw_button_add("G1000 pilot PFD Softkey 7",function()
    print("G1000 pilot PFD Softkey 7")
    xpl_command("sim/GPS/g1000n1_softkey7")
end)

g1000_pilot_button_softkey8 = hw_button_add("G1000 pilot PFD Softkey 8",function()
    print("G1000 pilot PFD Softkey 8")
    xpl_command("sim/GPS/g1000n1_softkey8")
end)

g1000_pilot_button_softkey9 = hw_button_add("G1000 pilot PFD Softkey 9",function()
    print("G1000 pilot PFD Softkey 9")
    xpl_command("sim/GPS/g1000n1_softkey9")
end)

g1000_pilot_button_softkey10 = hw_button_add("G1000 pilot PFD Softkey 10",function()
    print("G1000 pilot PFD Softkey 10")
    xpl_command("sim/GPS/g1000n1_softkey10")
end)

g1000_pilot_button_softkey11 = hw_button_add("G1000 pilot PFD Softkey 11",function()
    print("G1000 pilot PFD Softkey 11")
    xpl_command("sim/GPS/g1000n1_softkey11")
end)

g1000_pilot_button_softkey12 = hw_button_add("G1000 pilot PFD Softkey 12",function()
    print("G1000 pilot PFD Softkey 12")
    xpl_command("sim/GPS/g1000n1_softkey12")
end)
-- End softkey controls

g1000_pilot_button_com_ff = hw_button_add("G1000 pilot COM flip flop",function()
    print("G1000 pilot COMM flip flop")
    xpl_command("sim/GPS/g1000n1_com_ff")
end)

-- COM rotary control
g1000_pilot_dial_com_big = hw_dial_add("G1000 pilot COM outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot COM outer ring tune up")
        xpl_command("sim/GPS/g1000n1_com_outer_up")
    elseif direction == -1 then
        print("G1000 pilot COM outer ring tune down")
        xpl_command("sim/GPS/g1000n1_com_outer_down")
    end
end)

g1000_pilot_dial_com_sml = hw_dial_add("G1000 pilot COM inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot COM inner ring tune up")
        xpl_command("sim/GPS/g1000n1_com_inner_up")
    elseif direction == -1 then
        print("G1000 pilot COM inner ring tune down")
        xpl_command("sim/GPS/g1000n1_com_inner_down")
    end
end)

g1000_pilot_button_com12 = hw_button_add("G1000 pilot PFD COM 1/2 center (push button)",function()
    print("G1000 pilot PFD COM 1/2 center (push button)")
    xpl_command("sim/GPS/g1000n1_com12")
end)
-- End COM rotary control

-- CRS BARO rotary control
g1000_pilot_dial_crs = hw_dial_add("G1000 pilot CRS rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot CRS up")
        xpl_command("sim/GPS/g1000n1_crs_up")
    elseif direction == -1 then
        print("G1000 pilot CRS down")
        xpl_command("sim/GPS/g1000n1_crs_down")
    end
end)

g1000_pilot_button_crs = hw_button_add("G1000 pilot CRS sync (push button)",function()
    print("G1000 pilot CRS sync (push button)")
    xpl_command("sim/GPS/g1000n1_crs_sync")
end)

g1000_pilot_dial_baro = hw_dial_add("G1000 pilot baro rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot baro up")
        xpl_command("sim/GPS/g1000n1_baro_up")
    elseif direction == -1 then
        print("G1000 pilot baro down.")
        xpl_command("sim/GPS/g1000n1_baro_down")
    end
end)
-- End CRS BARO rotary control

-- RANGE PAN controls
g1000_pilot_button_pan_up = hw_button_add("G1000 pilot pan up",function()
    print("G1000 pilot pan up")
    xpl_command("sim/GPS/g1000n1_pan_up")
end)

g1000_pilot_button_pan_right = hw_button_add("G1000 pilot pan right",function()
    print("G1000 pilot pan right")
    xpl_command("sim/GPS/g1000n1_pan_right")
end)

g1000_pilot_button_pan_down = hw_button_add("G1000 pilot pan down",function()
    print("G1000 pilot pan down")
    xpl_command("sim/GPS/g1000n1_pan_down")
end)

g1000_pilot_button_pan_left = hw_button_add("G1000 pilot pan left",function()
    print("G1000 pilot pan left")
    xpl_command("sim/GPS/g1000n1_pan_left")
end)

g1000_pilot_button_pan_push = hw_button_add("G1000 pilot pan push",function()
    print("G1000 pilot pan push")
    xpl_command("sim/GPS/g1000n1_pan_push")
end)

g1000_pilot_dial_range = hw_dial_add("G1000 pilot range rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot range up")
        xpl_command("sim/GPS/g1000n1_range_up")
    elseif direction == -1 then
        print("G1000 pilot range down.")
        xpl_command("sim/GPS/g1000n1_range_down")
    end
end)
-- End RANGE PAN controls

g1000_pilot_button_direct = hw_button_add("G1000 pilot D->",function()
    print("G1000 pilot D->")
    xpl_command("sim/GPS/g1000n1_direct")
end)

g1000_pilot_button_menu = hw_button_add("G1000 pilot menu",function()
    print("G1000 pilot menu")
    xpl_command("sim/GPS/g1000n1_menu")
end)

g1000_pilot_button_fpl = hw_button_add("G1000 pilot FPL",function()
    print("G1000 pilot FPL")
    xpl_command("sim/GPS/g1000n1_fpl")
end)

g1000_pilot_button_proc = hw_button_add("G1000 pilot proc",function()
    print("G1000 pilot proc")
    xpl_command("sim/GPS/g1000n1_proc")
end)

g1000_pilot_button_clr = hw_button_add("G1000 pilot CLR",function()
    print("G1000 pilot CLR")
    xpl_command("sim/GPS/g1000n1_clr")
end)	
		
g1000_pilot_button_ent = hw_button_add("G1000 pilot ENT",function()
    print("G1000 pilot ENT")
    xpl_command("sim/GPS/g1000n1_ent")
end)	

-- FMS rotary control
g1000_pilot_dial_fms_big = hw_dial_add("G1000 pilot FMS outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot FMS outer ring up")
        xpl_command("sim/GPS/g1000n1_fms_outer_up")
    elseif direction == -1 then
        print("G1000 pilot FMS outer ring down")
        xpl_command("sim/GPS/g1000n1_fms_outer_down")
    end
end)

g1000_pilot_dial_fms_sml = hw_dial_add("G1000 pilot FMS inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 pilot FMS inner ring up")
        xpl_command("sim/GPS/g1000n1_fms_inner_up")
    elseif direction == -1 then
        print("G1000 pilot FMS inner ring down")
        xpl_command("sim/GPS/g1000n1_fms_inner_down")
    end
end)

g1000_pilot_button_fms = hw_button_add("G1000 pilot FMS cursor (push button)",function()
    print("G1000 pilot CRS sync (push button)")
    xpl_command("sim/GPS/g1000n1_cursor")
end)
-- End FMS rotary control