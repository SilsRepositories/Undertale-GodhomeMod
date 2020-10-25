if (myinteract == 2)
{
    global.flag[10] = 0
    global.flag[11] = 0
    global.flag[12] = 0
    global.flag[13] = 0
    global.entrance = 0
    caster_free(-3)
    if (bossid == 999)
        room_goto(room_floweyx)
    if (name == "Undyne")
    {
        if (genocide == 0)
        {
            bossid = 47
            lv = 1
            hp = 20
        }
        else if (genocide == 1)
        {
            bossid = 92
            lv = 10
            hp = 56
        }
    }
    global.flag[502] = 2
    global.flag[500] = 1
    global.flag[509] = 0
    global.flag[333] = (flagid + 1000)
    global.flag[427] = 1
    global.flag[428] = 1
    global.flag[429] = 1
    global.currentMFlag = minutesFlag
    global.currentSFlag = secondsFlag
    global.flag[attemptCountFlag] += 1
    global.battlegroup = bossid
    global.lv = lv
    global.hp = hp
    obj_mainchara.depth = -600
    if (instance_exists(obj_battler) == 0)
        instance_create(0, 0, obj_battler)
    global.plot = 6
    myinteract = 0
    genocide = 0
}
if ((!control_check_pressed(0)) && (myinteract == 4))
    myinteract = 3
if (myinteract == 1)
{
    currentmenu = 1
    hasHard = 0
    hasExpert = 0
    if (name == "Undyne")
        currentmenu = 0
    myinteract = 4
}
if (myinteract == 0)
{
    menuLength = 0
    script_execute(scr_depth)
}
else
    depth = -10000
