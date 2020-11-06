draw_self()
draw_set_halign(fa_center)
draw_set_font(fnt_small)
draw_set_color(c_black)
_name = ""
if (flagid == 324)
    _name = "TORIEL"
if (flagid == 325)
    _name = "PAPYRUS"
if (flagid == 326)
    _name = "UNDYNE"
if (flagid == 327)
    _name = "MUFFET"
if (flagid == 328)
    _name = "METTATON"
if (flagid == 329)
    _name = "ASGORE"
if (flagid == 330)
    _name = "FLOWEY"
if (flagid == 331)
    _name = "SANS"
if (flagid == 332)
    _name = "ASRIEL"
if (flagid == 344)
    _name = "MAD DUMMY"
if (flagid == 514)
    _name = "FULL GAME RUN"
if (flagid == 517)
    _name = "BOSS RUSH"
scr_outlinedraw((x + 8), (y - 26), _name, c_yellow)
_color = c_white
if (image_index == 1)
    _color = c_maroon
if (image_index == 2)
    _color = c_gray
if (image_index == 3)
    _color = c_yellow
if (image_index == 4)
    _color = c_silver
if (image_index == 5)
    _color = 16776960
scr_outlinedraw((x + 8), (y - 18), ("SCORE: " + string(global.flag[scoreFlag])), _color)
scr_outlinedraw((x + 8), (y - 10), ("ATTEMPTS: " + string(global.flag[attemptCountFlag])), c_white)
global.flag[87] = (((((((((((global.flag[290] + global.flag[291]) + global.flag[292]) + global.flag[293]) + global.flag[294]) + global.flag[295]) + global.flag[296]) + global.flag[297]) + global.flag[298]) + global.flag[299]) + global.flag[515]) + global.flag[518])
scr_outlinedraw(1450, 30, "GODHOME STATS", c_yellow)
scr_outlinedraw(1450, 55, "TOTAL SCORE:", c_red)
scr_outlinedraw(1450, 63, string(global.flag[87]), c_white)
global.flag[101] = (((((((((((global.flag[334] + global.flag[335]) + global.flag[336]) + global.flag[337]) + global.flag[338]) + global.flag[339]) + global.flag[340]) + global.flag[341]) + global.flag[342]) + global.flag[343]) + global.flag[516]) + global.flag[519])
scr_outlinedraw(1450, 88, "TOTAL ATTEMPTS:", c_red)
scr_outlinedraw(1450, 96, string(global.flag[101]), c_white)
draw_set_color(c_white)
draw_set_halign(fa_left)
