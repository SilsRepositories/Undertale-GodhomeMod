var i;
draw_self()
if (myinteract == 3)
{
    if (currentmenu == 0)
    {
        menuLength = 2
        scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "NEUTRAL", "GENOCIDE")
    }
    if (currentmenu == 1)
    {
        if (name == "Undyne")
        {
            menuLength = 4
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "START", "RUN 1", "RUN 2", "ONE SHOT")
        }
        if (name == "Asriel")
        {
            menuLength = 4
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "PHASE 1", "PHASE 2", "PHASE 3", "PHASE 4")
        }
        if (name == "Mettaton" || name == "Sans")
        {
            menuLength = 2
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "PHASE 1", "PHASE 2")
        }
        if (name == "Flowey")
        {
            menuLength = 7
            scr_menucreate(120, 80, 120, (10 + (18 * menuLength)), menuLength, "PHASE 1", "PHASE 2", "PHASE 3", "PHASE 4", "PHASE 5", "PHASE 6", "FINALE")
        }
        if (menuLength == 0)
            currentmenu = 2
    }
    if (currentmenu == 2)
    {
        if (hasHard == 1)
        {
            menuLength = 2
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "NORMAL", "HARD")
        }
        if (hasExpert == 1)
        {
            menuLength = 3
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "NORMAL", "HARD", "EXPERT")
        }
        if (hasHard == 0 && hasExpert == 0)
        {
            menuLength = 1
            scr_menucreate(120, 110, 120, (10 + (18 * menuLength)), menuLength, "NORMAL")
        }
    }
    if (currentmenu == 3)
    {
        if (name == "Flowey")
            currentmenu = 5
        else
        {
            menuLength = 8
            scr_menucreate(120, 60, 130, (10 + (18 * menuLength)), menuLength, "Stick", "Toy Knife", "Tough Glove", "Ballet Shoes", "Torn Notebook", "Burnt Pan", "Empty Gun", "Worn Dagger")
        }
    }
    if (currentmenu == 4)
    {
        if (name == "Flowey")
            currentmenu = 5
        else
        {
            menuLength = 9
            scr_menucreate(120, 60, 130, (10 + (18 * menuLength)), menuLength, "Bandage", "Faded Ribbon", "Manly Bandana", "Old Tutu", "Cloudy Glasses", "Stained Apron", "Cowboy Hat", "Heart Locket", "Temmie Armor")
        }
    }
    if (currentmenu == 5)
    {
        menuLength = 2
        scr_menucreate(120, 60, 130, (10 + (18 * menuLength)), menuLength, "Red Soul", "Blue Soul")
    }
    if (currentmenu == 6 || (currentmenu == 5 && name == "Undyne"))
        myinteract = 2
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
    if control_check_pressed(0)
    {
        if (currentmenu == 5)
        {
            global.soulMode = 0
            if (global.menucoord[0] == 1)
                global.soulMode = 1
            if (global.menucoord[0] == 2)
                global.soulMode = 2
        }
        if (currentmenu == 4)
        {
            global.adef = 0
            if (global.menucoord[0] == 0)
                global.armor = 4
            if (global.menucoord[0] == 1)
                global.armor = 12
            if (global.menucoord[0] == 2)
                global.armor = 15
            if (global.menucoord[0] == 3)
                global.armor = 24
            if (global.menucoord[0] == 4)
                global.armor = 44
            if (global.menucoord[0] == 5)
                global.armor = 46
            if (global.menucoord[0] == 6)
                global.armor = 48
            if (global.menucoord[0] == 7)
                global.armor = 50
            if (global.menucoord[0] == 8)
                global.armor = 64
            if (global.armor == 4)
                global.adef = 0
            if (global.armor == 12)
                global.adef = 3
            if (global.armor == 15)
                global.adef = 7
            if (global.armor == 24)
                global.adef = 10
            if (global.armor == 44)
                global.adef = 5
            if (global.armor == 46)
                global.adef = 11
            if (global.armor == 48)
            {
                global.adef = 12
                global.wstrength += 5
            }
            if (global.armor == 50)
                global.adef = 15
            if (global.armor == 53)
                global.adef = 99
            if (global.armor == 64)
            {
                global.adef = 20
                global.wstrength += 10
            }
        }
        if (currentmenu == 3)
        {
            global.wstrength = 0
            if (global.menucoord[0] == 0)
                global.weapon = 3
            if (global.menucoord[0] == 1)
                global.weapon = 13
            if (global.menucoord[0] == 2)
                global.weapon = 14
            if (global.menucoord[0] == 3)
                global.weapon = 25
            if (global.menucoord[0] == 4)
                global.weapon = 45
            if (global.menucoord[0] == 5)
                global.weapon = 47
            if (global.menucoord[0] == 6)
                global.weapon = 49
            if (global.menucoord[0] == 7)
                global.weapon = 51
            if (global.weapon == 3)
                global.wstrength = 0
            if (global.weapon == 13)
                global.wstrength = 3
            if (global.weapon == 14)
                global.wstrength = 5
            if (global.weapon == 25)
                global.wstrength = 7
            if (global.weapon == 45)
                global.wstrength = 2
            if (global.weapon == 47)
                global.wstrength = 10
            if (global.weapon == 49)
                global.wstrength = 12
            if (global.weapon == 51)
                global.wstrength = 15
        }
        if (currentmenu == 2)
        {
            if (global.menucoord[0] == 0)
                global.flag[6] = 0
            if (global.menucoord[0] == 1)
                global.flag[6] = 1
            if (global.menucoord[0] == 2)
                global.flag[6] = 2
        }
        if (currentmenu == 1)
        {
            global.flag[175] = 0
            global.flag[501] = 1
            global.flag[504] = 0
            global.tempvalue[31] = 0
            switch name
            {
                case "Undyne":
                    global.flag[99] = global.menucoord[0]
                    global.tempvalue[30] = global.menucoord[0]
                    global.flag[351] = 1500
                    if (global.flag[99] == 3)
                        global.flag[351] = 0
                    break
                case "Asriel":
                    global.flag[503] = 0
                    global.flag[505] = 0
                    global.flag[506] = 0
                    global.flag[507] = 0
                    global.flag[508] = 0
                    if (global.menucoord[0] == 0)
                    {
                        global.flag[501] = 0
                        bossid = 255
                    }
                    if (global.menucoord[0] == 1)
                    {
                        bossid = 256
                        global.flag[501] = 0
                        global.tempvalue[31] = 1
                        global.flag[175] = 2
                    }
                    if (global.menucoord[0] == 2)
                    {
                        bossid = 256
                        global.flag[501] = 1
                        global.flag[175] = 4
                    }
                    if (global.menucoord[0] == 3)
                    {
                        bossid = 256
                        global.flag[501] = 3
                        global.flag[175] = 8
                    }
                    break
                case "Mettaton":
                    if (global.menucoord[0] == 0)
                        bossid = 80
                    if (global.menucoord[0] == 1)
                        bossid = 81
                    break
                case "Sans":
                    global.flag[504] = global.menucoord[0]
                    global.flag[175] = 1
                    break
                case "Flowey":
                    global.fplot = (global.menucoord[0] + 1)
                    global.tempvalue[29] = global.fplot
                    global.flag[175] = power(2, global.fplot)
                    break
            }
            
        }
        if (currentmenu == 0)
        {
            if (global.menucoord[0] == 1)
            {
                genocide = 1
                currentmenu = 1
            }
            else
                genocide = 0
        }
        snd_play(snd_select)
        currentmenu++
        global.menucoord[0] = 0
    }
    if control_check_pressed(1)
    {
        if (currentmenu < 3)
        {
            if (currentmenu == 2 && (name != "Undyne" || (name == "Undyne" && genocide == 1)))
                currentmenu = 1
            if (currentmenu == 2 && (name == "Asriel" || name == "Flowey" || name == "Mettaton" || name == "Sans" || name == "Undyne"))
                currentmenu = 2
            else if (name == "Toriel" || name == "Papyrus" || name == "Muffet" || name == "Asgore" || name == "Mad Dummy")
                currentmenu = 0
        }
        if (currentmenu == 0 || ((currentmenu - 1) == 0 && name != "Undyne"))
        {
            global.interact = 0
            myinteract = 0
            genocide = 0
            for (i = 3; i < 12; i++)
                global.menuchoice[i] = 0
        }
        currentmenu--
        global.menucoord[0] = 0
    }
}
else
    global.flag[175] = 0
