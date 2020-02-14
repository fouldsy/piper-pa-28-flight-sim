-- Garmin G1000 for the co-pilot side
-- This is referenced as the MFD on device g1000n3_
-- The actual copilot device g1000n2_ doesn't control this unit

g1000_copilot_button_nav_ff = hw_button_add("G1000 copilot NAV flip flop",function()
    print("G1000 copilot NAV flip flop")
    xpl_command("sim/GPS/g1000n3_nav_ff")
end)

-- NAV rotary control
g1000_copilot_dial_nav_big = hw_dial_add("G1000 copilot NAV outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot NAV outer ring tune up")
        xpl_command("sim/GPS/g1000n3_nav_outer_up")
    elseif direction == -1 then
        print("G1000 copilot NAV outer ring tune down")
        xpl_command("sim/GPS/g1000n3_nav_outer_down")
    end
end)

g1000_copilot_dial_nav_sml = hw_dial_add("G1000 copilot NAV inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot NAV inner ring tune up")
        xpl_command("sim/GPS/g1000n3_nav_inner_up")
    elseif direction == -1 then
        print("G1000 copilot NAV inner ring tune down")
        xpl_command("sim/GPS/g1000n3_nav_inner_down")
    end
end)

g1000_copilot_button_nav12 = hw_button_add("G1000 copilot PFD NAV 1/2 center (push button)",function()
    print("G1000 copilot PFD NAV 1/2 center (push button)")
    xpl_command("sim/GPS/g1000n3_nav12")
end)
-- End NAV rotary control

-- HDG rotary control
g1000_copilot_dial_hdg = hw_dial_add("G1000 copilot HDG rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot HDG up")
        xpl_command("sim/GPS/g1000n3_hdg_up")
    elseif direction == -1 then
        print("G1000 copilot HDG down")
        xpl_command("sim/GPS/g1000n3_hdg_down")
    end
end)

g1000_copilot_button_hdg_sync = hw_button_add("G1000 copilot HDG sync center (push button)",function()
    print("G1000 copilot HDG sync center (push button)")
    xpl_command("sim/GPS/g1000n3_hdg_sync")
end)
-- End HDG rotary control

-- AP controls
g1000_copilot_button_ap = hw_button_add("G1000 copilot autocopilot",function()
    print("G1000 copilot autocopilot")
    xpl_command("sim/GPS/g1000n3_ap")
end)

g1000_copilot_button_fd = hw_button_add("G1000 copilot flight director",function()
    print("G1000 copilot flight director")
    xpl_command("sim/GPS/g1000n3_fd")
end)

g1000_copilot_button_hdg = hw_button_add("G1000 copilot AP HDG",function()
    print("G1000 copilot AP HDG")
    xpl_command("sim/GPS/g1000n3_hdg")
end)

g1000_copilot_button_alt = hw_button_add("G1000 copilot AP ALT",function()
    print("G1000 copilot AP ALT")
    xpl_command("sim/GPS/g1000n3_alt")
end)

g1000_copilot_button_nav = hw_button_add("G1000 copilot AP NAV",function()
    print("G1000 copilot AP NAV")
    xpl_command("sim/GPS/g1000n3_nav")
end)		
				
g1000_copilot_button_vnv = hw_button_add("G1000 copilot AP VNAV",function()
    print("G1000 copilot AP VNAV")
    xpl_command("sim/GPS/g1000n3_vnv")
end)		

g1000_copilot_button_apr = hw_button_add("G1000 copilot AP approach",function()
    print("G1000 copilot AP approach")
    xpl_command("sim/GPS/g1000n3_apr")
end)

g1000_copilot_button_bc = hw_button_add("G1000 copilot AP backcourse",function()
    print("G1000 copilot AP backcourse")
    xpl_command("sim/GPS/g1000n3_bc")
end)

g1000_copilot_button_vs = hw_button_add("G1000 copilot AP vertical speed",function()
    print("G1000 copilot AP vertical speed")
    xpl_command("sim/GPS/g1000n3_vs")
end)

g1000_copilot_button_flc = hw_button_add("G1000 copilot AP flight level change",function()
    print("G1000 copilot AP flight level change")
    xpl_command("sim/GPS/g1000n3_flc")
end)

g1000_copilot_button_nose_up = hw_button_add("G1000 copilot AP nose up",function()
    print("G1000 copilot AP nose up")
    xpl_command("sim/GPS/g1000n3_nose_up")
end)

g1000_copilot_button_nose_down = hw_button_add("G1000 copilot AP nose down",function()
    print("G1000 copilot AP nose down")
    xpl_command("sim/GPS/g1000n3_nose_down")
end)

g1000_copilot_dial_alt_outer = hw_dial_add("G1000 copilot altitude outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot altitude outer ring up")
        xpl_command("sim/GPS/g1000n3_alt_outer_up")
    elseif direction == -1 then
        print("G1000 copilot altitude outer ring down")
        xpl_command("sim/GPS/g1000n3_alt_outer_down")
    end
end)

g1000_copilot_dial_alt_inner = hw_dial_add("G1000 copilot altitude inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot altitude inner ring up")
        xpl_command("sim/GPS/g1000n3_alt_inner_up")
    elseif direction == -1 then
        print("G1000 copilot altitude inner ring down")
        xpl_command("sim/GPS/g1000n3_alt_inner_down")
    end
end)
-- End AP controls

-- Softkey controls
g1000_copilot_button_softkey1 = hw_button_add("G1000 copilot PFD Softkey 1",function()
    print("G1000 copilot PFD Softkey 1")
    xpl_command("sim/GPS/g1000n3_softkey1")
end)

g1000_copilot_button_softkey2 = hw_button_add("G1000 copilot PFD Softkey 2",function()
    print("G1000 copilot PFD Softkey 2")
    xpl_command("sim/GPS/g1000n3_softkey2")
end)

g1000_copilot_button_softkey3 = hw_button_add("G1000 copilot PFD Softkey 3",function()
    print("G1000 copilot PFD Softkey 3")
    xpl_command("sim/GPS/g1000n3_softkey3")
end)

g1000_copilot_button_softkey4 = hw_button_add("G1000 copilot PFD Softkey 4",function()
    print("G1000 copilot PFD Softkey 4")
    xpl_command("sim/GPS/g1000n3_softkey4")
end)

g1000_copilot_button_softkey5 = hw_button_add("G1000 copilot PFD Softkey 5",function()
    print("G1000 copilot PFD Softkey 5")
    xpl_command("sim/GPS/g1000n3_softkey5")
end)

g1000_copilot_button_softkey6 = hw_button_add("G1000 copilot PFD Softkey 6",function()
    print("G1000 copilot PFD Softkey 6")
    xpl_command("sim/GPS/g1000n3_softkey6")
end)

g1000_copilot_button_softkey7 = hw_button_add("G1000 copilot PFD Softkey 7",function()
    print("G1000 copilot PFD Softkey 7")
    xpl_command("sim/GPS/g1000n3_softkey7")
end)

g1000_copilot_button_softkey8 = hw_button_add("G1000 copilot PFD Softkey 8",function()
    print("G1000 copilot PFD Softkey 8")
    xpl_command("sim/GPS/g1000n3_softkey8")
end)

g1000_copilot_button_softkey9 = hw_button_add("G1000 copilot PFD Softkey 9",function()
    print("G1000 copilot PFD Softkey 9")
    xpl_command("sim/GPS/g1000n3_softkey9")
end)

g1000_copilot_button_softkey10 = hw_button_add("G1000 copilot PFD Softkey 10",function()
    print("G1000 copilot PFD Softkey 10")
    xpl_command("sim/GPS/g1000n3_softkey10")
end)

g1000_copilot_button_softkey11 = hw_button_add("G1000 copilot PFD Softkey 11",function()
    print("G1000 copilot PFD Softkey 11")
    xpl_command("sim/GPS/g1000n3_softkey11")
end)

g1000_copilot_button_softkey12 = hw_button_add("G1000 copilot PFD Softkey 12",function()
    print("G1000 copilot PFD Softkey 12")
    xpl_command("sim/GPS/g1000n3_softkey12")
end)
-- End softkey controls

g1000_copilot_button_com_ff = hw_button_add("G1000 copilot COM flip flop",function()
    print("G1000 copilot COMM flip flop")
    xpl_command("sim/GPS/g1000n3_com_ff")
end)

-- COM rotary control
g1000_copilot_dial_com_big = hw_dial_add("G1000 copilot COM outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot COM outer ring tune up")
        xpl_command("sim/GPS/g1000n3_com_outer_up")
    elseif direction == -1 then
        print("G1000 copilot COM outer ring tune down")
        xpl_command("sim/GPS/g1000n3_com_outer_down")
    end
end)

g1000_copilot_dial_com_sml = hw_dial_add("G1000 copilot COM inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot COM inner ring tune up")
        xpl_command("sim/GPS/g1000n3_com_inner_up")
    elseif direction == -1 then
        print("G1000 copilot COM inner ring tune down")
        xpl_command("sim/GPS/g1000n3_com_inner_down")
    end
end)

g1000_copilot_button_com12 = hw_button_add("G1000 copilot PFD COM 1/2 center (push button)",function()
    print("G1000 copilot PFD COM 1/2 center (push button)")
    xpl_command("sim/GPS/g1000n3_com12")
end)
-- End COM rotary control

-- CRS BARO rotary control
g1000_copilot_dial_crs = hw_dial_add("G1000 copilot CRS rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot CRS up")
        xpl_command("sim/GPS/g1000n3_crs_up")
    elseif direction == -1 then
        print("G1000 copilot CRS down")
        xpl_command("sim/GPS/g1000n3_crs_down")
    end
end)

g1000_copilot_button_crs = hw_button_add("G1000 copilot CRS sync (push button)",function()
    print("G1000 copilot CRS sync (push button)")
    xpl_command("sim/GPS/g1000n3_crs_sync")
end)

g1000_copilot_dial_baro = hw_dial_add("G1000 copilot baro rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot baro up")
        xpl_command("sim/GPS/g1000n3_baro_up")
    elseif direction == -1 then
        print("G1000 copilot baro down.")
        xpl_command("sim/GPS/g1000n3_baro_down")
    end
end)
-- End CRS BARO rotary control

-- RANGE PAN controls
g1000_pilot_button_pan_up = hw_button_add("G1000 copilot pan up",function()
    print("G1000 copilot pan up")
    xpl_command("sim/GPS/g1000n3_pan_up")
end)

g1000_pilot_button_pan_right = hw_button_add("G1000 copilot pan right",function()
    print("G1000 copilot pan right")
    xpl_command("sim/GPS/g1000n3_pan_right")
end)

g1000_pilot_button_pan_down = hw_button_add("G1000 copilot pan down",function()
    print("G1000 copilot pan down")
    xpl_command("sim/GPS/g1000n3_pan_down")
end)

g1000_pilot_button_pan_left = hw_button_add("G1000 copilot pan left",function()
    print("G1000 copilot pan left")
    xpl_command("sim/GPS/g1000n3_pan_left")
end)

g1000_pilot_button_pan_push = hw_button_add("G1000 copilot pan push",function()
    print("G1000 copilot pan push")
    xpl_command("sim/GPS/g1000n3_pan_push")
end)

g1000_pilot_dial_range = hw_dial_add("G1000 copilot range rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot range up")
        xpl_command("sim/GPS/g1000n3_range_up")
    elseif direction == -1 then
        print("G1000 copilot range down.")
        xpl_command("sim/GPS/g1000n3_range_down")
    end
end)
-- End RANGE PAN controls

g1000_copilot_button_direct = hw_button_add("G1000 copilot D->",function()
    print("G1000 copilot D->")
    xpl_command("sim/GPS/g1000n3_direct")
end)

g1000_copilot_button_menu = hw_button_add("G1000 copilot menu",function()
    print("G1000 copilot menu")
    xpl_command("sim/GPS/g1000n3_menu")
end)

g1000_copilot_button_fpl = hw_button_add("G1000 copilot FPL",function()
    print("G1000 copilot FPL")
    xpl_command("sim/GPS/g1000n3_fpl")
end)

g1000_copilot_button_proc = hw_button_add("G1000 copilot proc",function()
    print("G1000 copilot proc")
    xpl_command("sim/GPS/g1000n3_proc")
end)

g1000_copilot_button_clr = hw_button_add("G1000 copilot CLR",function()
    print("G1000 copilot CLR")
    xpl_command("sim/GPS/g1000n3_clr")
end)	
		
g1000_copilot_button_ent = hw_button_add("G1000 copilot ENT",function()
    print("G1000 copilot ENT")
    xpl_command("sim/GPS/g1000n3_ent")
end)	

-- FMS rotary control
g1000_copilot_dial_fms_big = hw_dial_add("G1000 copilot FMS outer rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot FMS outer ring up")
        xpl_command("sim/GPS/g1000n3_fms_outer_up")
    elseif direction == -1 then
        print("G1000 copilot FMS outer ring down")
        xpl_command("sim/GPS/g1000n3_fms_outer_down")
    end
end)

g1000_copilot_dial_fms_sml = hw_dial_add("G1000 copilot FMS inner rotary control","TYPE_2_DETENT_PER_PULSE",function(direction)
    if direction == 1 then
        print("G1000 copilot FMS inner ring up")
        xpl_command("sim/GPS/g1000n3_fms_inner_up")
    elseif direction == -1 then
        print("G1000 copilot FMS inner ring down")
        xpl_command("sim/GPS/g1000n3_fms_inner_down")
    end
end)

g1000_copilot_button_fms = hw_button_add("G1000 copilot FMS cursor (push button)",function()
    print("G1000 copilot CRS sync (push button)")
    xpl_command("sim/GPS/g1000n3_cursor")
end)
-- End FMS rotary control