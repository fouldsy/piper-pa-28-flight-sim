-- Garmin G1000 audio panel
-- This uses generic audio_panel references
-- Not all functions actually modeled, such as COM3, music, or crew buttons
-- The display_reversion (red button) to switch PFD and MFD is included here

g1000_audio_button_transmit_audio_com1 = hw_button_add("G1000 Transmit audio: COM1",function()
    print("G1000 Transmit audio: COM1")
    xpl_command("sim/audio_panel/transmit_audio_com1")
end)

g1000_audio_button_monitor_audio_com1 = hw_button_add("G1000 Monitor audio: COM1",function()
    print("G1000 Monitor audio: COM1")
    xpl_command("sim/audio_panel/monitor_audio_com1")
end)

g1000_audio_button_transmit_audio_com2 = hw_button_add("G1000 Transmit audio: COM2",function()
    print("G1000 Transmit audio: COM2")
    xpl_command("sim/audio_panel/transmit_audio_com2")
end)

g1000_audio_button_monitor_audio_com2 = hw_button_add("G1000 Monitor audio: COM2",function()
    print("G1000 Monitor audio: COM2")
    xpl_command("sim/audio_panel/monitor_audio_com2")
end)

g1000_audio_button_monitor_audio_mkr = hw_button_add("G1000 Monitor audio: MKR",function()
    print("G1000 Monitor audio: MKR")
    xpl_command("sim/audio_panel/monitor_audio_mkr")
end)

g1000_audio_button_monitor_audio_dme = hw_button_add("G1000 Monitor audio: DME",function()
    print("G1000 Monitor audio: DME")
    xpl_command("sim/audio_panel/monitor_audio_dme")
end)

g1000_audio_button_monitor_audio_nav1 = hw_button_add("G1000 Monitor audio: NAV1",function()
    print("G1000 Monitor audio: NAV1")
    xpl_command("sim/audio_panel/monitor_audio_nav1")
end)

g1000_audio_button_monitor_audio_adf = hw_button_add("G1000 Monitor audio: ADF",function()
    print("G1000 Monitor audio: ADF")
    xpl_command("sim/audio_panel/monitor_audio_adf1")
end)

g1000_audio_button_monitor_audio_nav2 = hw_button_add("G1000 Monitor audio: NAV2",function()
    print("G1000 Monitor audio: NAV2")
    xpl_command("sim/audio_panel/monitor_audio_nav2")
end)

g1000_audio_button_display_reversion = hw_button_add("G1000 red button for display reversion (backup display)",function()
    print("G1000 red button for display reversion (backup display)")
    xpl_command("sim/GPS/G1000_display_reversion")
end)