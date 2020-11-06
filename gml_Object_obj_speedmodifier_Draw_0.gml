if (keyboard_check(ord("R")) && (room == room_battle || (room == room_floweyx && global.flag[427] == 1)) && global.flag[513] == 0 && global.isRush == 0)
{
    restart_timer += 1
    draw_set_font(fnt_small)
    draw_set_color(c_red)
    if (restart_timer >= 0 && restart_timer <= 20)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "RESTARTING.")
    if (restart_timer >= 20 && restart_timer <= 40)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "RESTARTING..")
    if (restart_timer >= 40 && restart_timer <= 60)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "RESTARTING...")
    if (restart_timer >= 60)
    {
        global.flag[427] = 1
        global.flag[428] = 1
        global.flag[429] = 1
        global.damageDealt = 0
        global.damageTaken = 0
        global.hpRecovered = 0
        global.border = 0
        global.flag[99] = global.tempvalue[30]
        global.flag[351] = 1500
        if (global.tempvalue[31] == 1)
            global.tempvalue[12] = 0
        caster_free(-3)
        restart_timer = -999999
        if (room == room_floweyx)
        {
            global.fplot = global.tempvalue[29]
            room_goto(room_floweyx)
        }
        else if (room == room_battle)
        {
            room_goto(room_battle)
            global.hp = global.maxhp
        }
    }
}
else
    restart_timer = 0
if (keyboard_check(ord("G")) && (room == room_battle || room == room_floweyx || global.flag[513] == 1) && global.flag[427] == 1)
{
    trans_timer += 1
    draw_set_font(fnt_small)
    draw_set_color(c_red)
    if (trans_timer >= 0 && trans_timer <= 20)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "SENDING YOU BACK TO GODHOME.")
    if (trans_timer >= 20 && trans_timer <= 40)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "SENDING YOU BACK TO GODHOME..")
    if (trans_timer >= 40 && trans_timer <= 60)
        draw_text((view_xview[view_current] + 1), (view_yview[view_current] + 1), "SENDING YOU BACK TO GODHOME...")
    if (trans_timer >= 60)
    {
        if (global.flag[513] == 1)
        {
            global.filechoice = 1
            scr_load()
        }
        global.isRush = 0
        instance_destroy(obj_bossrushstart)
        global.flag[513] = 0
        caster_free(-3)
        trans_timer = -999999
        global.flag[427] = 0
        room_goto(room_sans_godhome)
    }
}
else
    trans_timer = 0
if (keyboard_check(ord("S")) && room != room_battle && room != room_floweyx && room != room_bossrushstart && global.flag[513] == 0)
{
    draw_set_font(fnt_small)
    draw_set_color(c_yellow)
    draw_text((view_xview[view_current] + 93), (view_yview[view_current] + 196), "Press Left or Right to slightly adjust speed")
    draw_text((view_xview[view_current] + 108), (view_yview[view_current] + 203), "Hold Shift to adjust speed to high values")
    draw_set_color(c_white)
    draw_rectangle((view_xview[view_current] + 16), (view_yview[view_current] + 210), (view_xview[view_current] + 304), (view_yview[view_current] + 217), 0)
    draw_set_color(c_black)
    draw_rectangle((view_xview[view_current] + 17), (view_yview[view_current] + 211), (view_xview[view_current] + 303), (view_yview[view_current] + 216), 0)
    if (global.speedModifier < 2)
        draw_set_color(c_white)
    if (global.speedModifier < 3)
        draw_set_color(c_yellow)
    if (global.speedModifier < 5)
        draw_set_color(c_orange)
    if (global.speedModifier >= 5)
        draw_set_color(c_red)
    startx = (view_xview[view_current] + 17)
    starty = (view_yview[view_current] + 211)
    endy = (view_yview[view_current] + 216)
    draw_set_font(fnt_curs)
    draw_rectangle(startx, starty, (startx + (global.speedModifier * 14.3)), endy, 0)
    draw_text((view_xview[view_current] + 16), (view_yview[view_current] + 190), (string(round((global.speedModifier * 100))) + "%"))
    if (keyboard_check_pressed(vk_left) || (obj_time.left == 1 && keyboard_check(vk_shift)))
    {
        global.speedModifier -= 0.01
        if (keyDownTime >= 50)
            global.speedModifier -= 0.015
        if (keyDownTime >= 100)
            global.speedModifier -= 0.025
        if (keyDownTime >= 250)
            global.speedModifier -= 0.05
        if (global.speedModifier < 0.5)
            global.speedModifier = 0.5
        global.speedModifier = (round((global.speedModifier * 100)) / 100)
    }
    if (keyboard_check_pressed(vk_right) || (obj_time.right == 1 && keyboard_check(vk_shift)))
    {
        global.speedModifier += 0.01
        if (keyDownTime >= 50)
            global.speedModifier += 0.015
        if (keyDownTime >= 100)
            global.speedModifier += 0.025
        if (keyDownTime >= 250)
            global.speedModifier += 0.05
        if (global.speedModifier > 20)
            global.speedModifier = 20
        global.speedModifier = (round((global.speedModifier * 100)) / 100)
    }
    if ((!keyboard_check(vk_right)) && (!keyboard_check(vk_left)))
        keyDownTime = 0
    else
        keyDownTime += 1
}
if (keyboard_check_pressed(ord("X")) && settingsMenu == 1)
{
    global.interact = 0
    settingsMenu = 0
}
if (keyboard_check_pressed(ord("T")) && room != room_battle && room != room_floweyx && room != room_bossrushstart && (!instance_exists(obj_dialoguer)))
{
    if (settingsMenu == 1)
    {
        settingsMenu = 0
        global.menucoord[0] = 0
        global.interact = 0
    }
    else
        settingsMenu = 1
}
if (settingsMenu == 1)
{
    menuLength = 3
    _boolean = ""
    if (global.completeDialogueSkip == 0)
        _boolean = "FALSE"
    else
        _boolean = "TRUE"
    scr_menucreate(45, 110, 250, (10 + (18 * menuLength)), menuLength, ("Set Music Volume: " + string((global.musicVolume * 100))), ("Set Sound Volume: " + string((global.soundVolume * 100))), ("Auto Dialogue Skip: " + _boolean))
    if keyboard_check_pressed(vk_up)
    {
        if (global.menucoord[0] != 0)
        {
            snd_play(snd_squeak)
            global.menucoord[0] -= 1
        }
    }
    if keyboard_check_pressed(vk_down)
    {
        if (global.menucoord[0] != (menuLength - 1))
        {
            snd_play(snd_squeak)
            if (global.menuchoice[(global.menucoord[0] + 1)] != 0)
                global.menucoord[0] += 1
        }
    }
    if (obj_time.left == 1)
    {
        switch global.menucoord[0]
        {
            case 0:
                global.musicVolume -= 0.01
                global.musicVolume = (round((global.musicVolume * 100)) / 100)
                if (global.musicVolume < 0)
                    global.musicVolume = 0
                audio_stop_sound(snd_test)
                test = audio_play_sound(snd_test, 80, false)
                audio_sound_gain(test, global.musicVolume, 0)
                caster_set_volume(global.currentsong, global.musicVolume, 0)
                break
            case 1:
                global.soundVolume -= 0.01
                global.soundVolume = (round((global.soundVolume * 100)) / 100)
                if (global.soundVolume < 0)
                    global.soundVolume = 0
                audio_stop_sound(snd_test)
                test = audio_play_sound(snd_test, 80, false)
                audio_sound_gain(test, global.soundVolume, 0)
                caster_set_volume(global.currentsong, global.musicVolume, 0)
                break
            case 2:
                if (global.completeDialogueSkip == 1)
                    global.completeDialogueSkip = 0
                break
        }
        
    }
    if (obj_time.right == 1)
    {
        switch global.menucoord[0]
        {
            case 0:
                global.musicVolume += 0.01
                global.musicVolume = (round((global.musicVolume * 100)) / 100)
                if (global.musicVolume > 1)
                    global.musicVolume = 1
                audio_stop_sound(snd_test)
                test = audio_play_sound(snd_test, 80, false)
                audio_sound_gain(test, global.musicVolume, 0)
                break
            case 1:
                global.soundVolume += 0.01
                global.soundVolume = (round((global.soundVolume * 100)) / 100)
                if (global.soundVolume > 1)
                    global.soundVolume = 1
                audio_stop_sound(snd_test)
                test = audio_play_sound(snd_test, 80, false)
                audio_sound_gain(test, global.soundVolume, 0)
                break
            case 2:
                if (global.completeDialogueSkip == 0)
                    global.completeDialogueSkip = 1
                break
        }
        
    }
}
if (global.speedModifier != 1)
{
    draw_set_font(fnt_curs)
    draw_set_color(c_gray)
    draw_text((view_xview[view_current] + 2), (view_yview[view_current] + 9), (string(round((global.speedModifier * 100))) + "% SPEED"))
    draw_set_font(fnt_maintext)
}
if (global.currentBoss > -1)
{
    caster_free(global.batmusic)
    caster_free(global.batmusic2)
}
