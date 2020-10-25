menu_startx = argument0
menu_starty = argument1
menu_width = argument2
menu_height = argument3
menu_choices = argument4
xx = view_xview[view_current]
yy = view_yview[view_current]
draw_set_color(c_white)
ossafe_fill_rectangle((menu_startx + xx), (menu_starty + yy), ((menu_startx + menu_width) + xx), ((menu_starty + menu_height) + yy))
menu_startx += 3
menu_starty += 3
menu_width -= 6
menu_height -= 6
draw_set_color(c_black)
ossafe_fill_rectangle((menu_startx + xx), (menu_starty + yy), ((menu_startx + menu_width) + xx), ((menu_starty + menu_height) + yy))
global.interact = 1
scr_setfont(fnt_maintext)
draw_set_color(c_white)
draw_sprite(spr_heartsmall, 0, ((menu_startx + 11) + xx), (((menu_starty + 7) + yy) + (global.menucoord[0] * 18)))
for (k = 0; k < menu_choices; k++)
    global.menuchoice[k] = 1
for (i = 5; i < argument_count; i++)
{
    draw_text(((menu_startx + xx) + 24), ((menu_starty + yy) + 3), argument[i])
    menu_starty += 18
}
