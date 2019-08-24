battery_switch = hw_switch_add("Battery", 1, function(position)
    if position == 0 then
        print("Battery off")
        xpl_command("sim/electrical/battery_1_off")
    elseif position == 1 then
        print("Battery on")
        xpl_command("sim/electrical/battery_1_on")
    end
end)

battery_array_switch = hw_switch_add("Battery array", 1, function(position)
    if position == 0 then
        print("Battery array off")
        xpl_command("sim/electrical/battery_array_off")
    elseif position == 1 then
        print("Battery array on")
        xpl_command("sim/electrical/battery_array_on")
    end
end)

fuel_pump_switch = hw_switch_add("Fuel pump", 1, function(position)
    if position == 0 then
        print("Fuel pump off")
        xpl_command("sim/fuel/fuel_pump_1_off")
    elseif position == 1 then
        print("Fuel pump on")
        xpl_command("sim/fuel/fuel_pump_1_on")
    end
end)

landing_lights_switch = hw_switch_add("Landing lights", 1, function(position)
    if position == 0 then
        print("Landing lights off")
        xpl_command("sim/lights/landing_lights_off")
    elseif position == 1 then
        print("Landing lights on")
        xpl_command("sim/lights/landing_lights_on")
    end
end)

strobe_nav_lights_switch = hw_switch_add("Strobe and navigation lights", 1, function(position)
    if position == 0 then
        print("Strobe and navigation lights off")
        xpl_command("sim/lights/strobe_lights_of")
        xpl_command("sim/lights/nav_lights_off")
    elseif position == 1 then
        print("Strobe and navigation lights on")
        xpl_command("sim/lights/strobe_lights_on")
        xpl_command("sim/lights/nav_lights_on")
    end
end)

pitot_heat_switch = hw_switch_add("Pitot heat", 1, function(position)
    if position == 0 then
        print("Pitot heat off")
        xpl_command("sim/ice/pitot_heat0_off")
    elseif position == 1 then
        print("Pitot heat on")
        xpl_command("sim/ice/pitot_heat0_on")
    end
end)