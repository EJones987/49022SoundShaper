local lib_path = reaper.GetExtState("Lokasenna_GUI", "lib_path_v2")
if not lib_path or lib_path == "" then
    reaper.MB("Couldn't load the Lokasenna_GUI library. Please install 'Lokasenna's GUI library v2 for Lua', available on ReaPack, then run the 'Set Lokasenna_GUI v2 library path.lua' script in your Action List.", "Whoops!", 0)
    return
end
loadfile(lib_path .. "Core.lua")()




GUI.req("Classes/Class - Menubox.lua")()
GUI.req("Classes/Class - Frame.lua")()
GUI.req("Classes/Class - Label.lua")()
GUI.req("Classes/Class - Knob.lua")()
GUI.req("Classes/Class - Slider.lua")()
GUI.req("Classes/Class - Button.lua")()
-- If any of the requested libraries weren't found, abort the script.
if missing_lib then return 0 end



GUI.name = "49022 Display"
GUI.x, GUI.y, GUI.w, GUI.h = 0, 0, 1280, 675
GUI.anchor, GUI.corner = "mouse", "C"

--functions:
function update_effect_display()
    local effect_selected = GUI.Val("Menubox1")
    local effect_names = {"Select Effect", "Equalizer"}
    local selected_effect = effect_names[effect_selected]

    -- GUI.elms["Frame1"].z = 100
    -- GUI.elms["Slider1"].z = 100
    -- GUI.elms["Slider2"].z = 100
    -- GUI.elms["Slider3"].z = 100
    -- GUI.elms["Slider4"].z = 100
    -- GUI.elms["Slider5"].z = 100
    -- GUI.elms["Slider6"].z = 100
    -- GUI.elms["Slider7"].z = 100

    if selected_effect == 1 then
        GUI.elms["Frame1"].z = 1
        GUI.elms["Slider1"].z = 1
        GUI.elms["Slider2"].z = 1
        GUI.elms["Slider3"].z = 1
        GUI.elms["Slider4"].z = 1
        GUI.elms["Slider5"].z = 1
        GUI.elms["Slider6"].z = 1
        GUI.elms["Slider7"].z = 1
    elseif selected_effect == 2 then
        GUI.elms["Frame1"].z = 100
        GUI.elms["Slider1"].z = 100
        GUI.elms["Slider2"].z = 100
        GUI.elms["Slider3"].z = 100
        GUI.elms["Slider4"].z = 100
        GUI.elms["Slider5"].z = 100
        GUI.elms["Slider6"].z = 100
        GUI.elms["Slider7"].z = 100
    end

    -- Redraw GUI
    GUI.redraw_z[1] = true
end

--Fonts size adjustment
local fonts = GUI.get_OS_fonts()
local myFont1 = { fonts.sans, 20 }
local myFont2 = { fonts.sans, 20 }

--Frame1 + Menubox1 (Default:Equalizer)

GUI.New("Frame1", "Frame", {
    z = 20,
    x = 0,
    y = 128,
    w = 425,
    h = 592,
    shadow = false,
    fill = false,
    color = "elm_frame",
    bg = "wnd_bg",
    round = 0,
    text = "",
    txt_indent = 0,
    txt_pad = 0,
    pad = 4,
    font = 4,
    col_txt = "txt"
})

GUI.New("Menubox1", "Menubox", {
    z = 1,
    x = 96,
    y = 144,
    w = 300,
    h = 30,
    caption = "Menubox1",
    optarray = {"Select Effect","Equalizer","Compressor", "Reverb", "Delay", "Distortion", "Filter", "Modulation", "Pitch Shift"},
    retval = 1,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_cap = "txt",
    bg = "wnd_bg",
    pad = 4,
    noarrow = false,
    align = 0,
    update_effect_display()
})
-- GUI.elms["Menubox1"].func = update_effect_display

GUI.New("Slider1", "Slider", {
    z = 10,
    x = 32,
    y = 205,
    w = 350,
    caption = "31",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = myFont,
    font_b = myFont,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider2", "Slider", {
    z = 10,
    x = 32,
    y = 258,
    w = 350,
    caption = "125",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider3", "Slider", {
    z = 10,
    x = 32,
    y = 312,
    w = 350,
    caption = "500",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider4", "Slider", {
    z = 10,
    x = 32,
    y = 365,
    w = 350,
    caption = "1k",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider5", "Slider", {
    z = 10,
    x = 32,
    y = 418,
    w = 350,
    caption = "4k",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider6", "Slider", {
    z = 10,
    x = 32,
    y = 471,
    w = 350,
    caption = "8k",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider7", "Slider", {
    z = 10,
    x = 32,
    y = 525,
    w = 350,
    caption = "16k",
    min = -10,
    max = 10,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Button1", "Button", {
    z = 10,
    x = 110,
    y = 580,
    w = 70,
    h = 50,
    caption = "Low Cut",
    font = 4,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Button2", "Button", {
    z = 10,
    x = 240,
    y = 580,
    w = 70,
    h = 50,
    caption = "High Cut",
    font = 4,
    col_txt = "txt",
    col_fill = "elm_frame"
})

--Frame2 + Menubox2 (Default:Compressor)

GUI.New("Frame2", "Frame", {
    z = 10,
    x = 425,
    y = 128,
    w = 425,
    h = 592,
    shadow = false,
    fill = false,
    color = "elm_frame",
    bg = "wnd_bg",
    round = 0,
    text = "",
    txt_indent = 0,
    txt_pad = 0,
    pad = 4,
    font = 4,
    col_txt = "txt"
})

GUI.New("Menubox2", "Menubox", {
    z = 1,
    x = 512,
    y = 144,
    w = 300,
    h = 30,
    caption = "Menubox2",
    optarray = {"Select Effect","Compressor", "Equalizer", " Reverb", " Delay", " Distortion", " Filter", " Modulation", " Pitch Shift"},
    retval = 1,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_cap = "txt",
    bg = "wnd_bg",
    pad = 4,
    noarrow = false,
    align = 0
})

GUI.New("Slider10", "Slider", {
    z = 1,
    x = 480,
    y = 210,
    w = 300,
    caption = "Threshold",
    min = -40,
    max = 0,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider11", "Slider", {
    z = 1,
    x = 480,
    y = 263,
    w = 300,
    caption = "Ratio",
    min = 1,
    max = 20,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider12", "Slider", {
    z = 1,
    x = 480,
    y = 315,
    w = 300,
    caption = "Attack",
    min = 1,
    max = 100,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider13", "Slider", {
    z = 1,
    x = 480,
    y = 370,
    w = 300,
    caption = "Release",
    min = 10,
    max = 500,
    defaults = {0},
    inc = 1,
    dir = "h",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob10", "Knob", {
    z = 1,
    x = 605,
    y = 430,
    w = 40,
    caption = "Gain",
    min = 0,
    max = 12,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Button3", "Button", {
    z = 1,
    x = 496,
    y = 560,
    w = 100,
    h = 50,
    caption = "Soft",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Button4", "Button", {
    z = 1,
    x = 656,
    y = 560,
    w = 100,
    h = 50,
    caption = "Hard",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Label1", "Label", {
    z = 1,
    x = 448,
    y = 256,
    caption = "1:1",
    font = 2,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label2", "Label", {
    z = 1,
    x = 800,
    y = 256,
    caption = "20:1",
    font = 2,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label3", "Label", {
    z = 1,
    x = 800,
    y = 307,
    caption = "ms",
    font = 2,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label4", "Label", {
    z = 1,
    x = 800,
    y = 365,
    caption = "ms",
    font = 2,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label5", "Label", {
    z = 1,
    x = 610,
    y = 530,
    caption = "Knee",
    font = 3,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

--Frame3 + Menubox3 (Default:Reverb)

GUI.New("Frame3", "Frame", {
    z = 10,
    x = 850,
    y = 128,
    w = 425,
    h = 592,
    shadow = false,
    fill = false,
    color = "elm_frame",
    bg = "wnd_bg",
    round = 0,
    text = "",
    txt_indent = 0,
    txt_pad = 0,
    pad = 4,
    font = 4,
    col_txt = "txt"
})

GUI.New("Menubox3", "Menubox", {
    z = 1,
    x = 944,
    y = 144,
    w = 300,
    h = 30,
    caption = "Menubox3",
    optarray = {"Select Effect","Reverb", "Equalizer", "Compressor", "Delay", "Distortion", "Filter", "Modulation", "Pitch Shift"},
    retval = 1,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_cap = "txt",
    bg = "wnd_bg",
    pad = 4,
    noarrow = false,
    align = 0
})

GUI.New("Slider14", "Slider", {
    z = 1,
    x = 896,
    y = 210,
    w = 300,
    caption = "Room Size",
    min = 100,
    max = 0,
    defaults = {0},
    inc = 1,
    dir = "v",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider15", "Slider", {
    z = 1,
    x = 976,
    y = 210,
    w = 300,
    caption = "Decay",
    min = 10,
    max = 0.1,
    defaults = {0},
    inc = 0.1,
    dir = "v",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider16", "Slider", {
    z = 1,
    x = 1056,
    y = 210,
    w = 300,
    caption = "Damping",
    min = 100,
    max = 0,
    defaults = {0},
    inc = 1,
    dir = "v",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider17", "Slider", {
    z = 1,
    x = 1136,
    y = 210,
    w = 300,
    caption = "Pre-Delay",
    min = 200,
    max = 0,
    defaults = {0},
    inc = 1,
    dir = "v",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Slider18", "Slider", {
    z = 1,
    x = 1216,
    y = 210,
    w = 300,
    caption = "Wet/Dry",
    min = 100,
    max = 0,
    defaults = {0},
    inc = 1,
    dir = "v",
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_fill = "elm_fill",
    bg = "wnd_bg",
    show_handles = true,
    show_values = true,
    cap_x = 0,
    cap_y = 0
})

GUI.New("Button5", "Button", {
    z = 1,
    x = 1008,
    y = 560,
    w = 80,
    h = 30,
    caption = "Room",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Button6", "Button", {
    z = 1,
    x = 1008,
    y = 610,
    w = 80,
    h = 30,
    caption = "Plate",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Button7", "Button", {
    z = 1,
    x = 1136,
    y = 560,
    w = 80,
    h = 30,
    caption = "Hall",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Button8", "Button", {
    z = 1,
    x = 1136,
    y = 610,
    w = 80,
    h = 30,
    caption = "Church",
    font = 3,
    col_txt = "txt",
    col_fill = "elm_frame"
})

GUI.New("Label6", "Label", {
    z = 1,
    x = 896,
    y = 520,
    caption = "%",
    font = 4,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label7", "Label", {
    z = 1,
    x = 976,
    y = 520,
    caption = "s",
    font = 4,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label8", "Label", {
    z = 1,
    x = 1056,
    y = 520,
    caption = "%",
    font = 4,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label9", "Label", {
    z = 1,
    x = 1136,
    y = 520,
    caption = "ms",
    font = 4,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label10", "Label", {
    z = 1,
    x = 1216,
    y = 520,
    caption = "%",
    font = 4,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

GUI.New("Label11", "Label", {
    z = 1,
    x = 880,
    y = 585,
    caption = "Reverb Type",
    font = 2,
    color = "txt",
    bg = "wnd_bg",
    shadow = false
})

--Upper Knob (knob1-knob9)
GUI.New("Knob1", "Knob", {
    z = 1,
    x = 112,
    y = 48,
    w = 40,
    caption = "Knob1",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob2", "Knob", {
    z = 1,
    x = 240,
    y = 48,
    w = 40,
    caption = "Knob2",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob3", "Knob", {
    z = 1,
    x = 368,
    y = 48,
    w = 40,
    caption = "Knob3",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob4", "Knob", {
    z = 1,
    x = 496,
    y = 48,
    w = 40,
    caption = "Knob4",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob5", "Knob", {
    z = 1,
    x = 624,
    y = 48,
    w = 40,
    caption = "Knob5",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob6", "Knob", {
    z = 1,
    x = 752,
    y = 48,
    w = 40,
    caption = "Knob6",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob7", "Knob", {
    z = 1,
    x = 880,
    y = 48,
    w = 40,
    caption = "Knob7",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob8", "Knob", {
    z = 1,
    x = 1008,
    y = 48,
    w = 40,
    caption = "Knob8",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

GUI.New("Knob9", "Knob", {
    z = 1,
    x = 1136,
    y = 48,
    w = 40,
    caption = "Knob9",
    min = 0,
    max = 10,
    default = 0,
    inc = 1,
    vals = true,
    font_a = 3,
    font_b = 4,
    col_txt = "txt",
    col_head = "elm_fill",
    col_body = "elm_frame",
    cap_x = 0,
    cap_y = 0
})

--Other Effect Module:



GUI.Init()
GUI.Main()
