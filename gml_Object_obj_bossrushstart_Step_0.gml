timer += 1
if (timer == 75)
    con = 1
if (con == 1)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "So you finally came.                  %"
    global.msg[1] = "It is finally time^1&for you to prove^1&your worth.                  %"
    global.msg[2] = "Let us begin.                                             %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 2
}
if (timer == 652 && global.currentBoss < 10)
    instance_create(0, 0, obj_screenwhiter)
if (timer == 688 && room == room_bossrushstart)
{
    instance_destroy(OBJ_WRITER)
    global.border = 0
    global.currentBoss += 1
    switch global.currentBoss
    {
        case 3:
            global.lv = 10
            global.maxhp = 56
            break
        case 8:
            global.lv = 19
            global.maxhp = 92
            break
        default:
            global.lv = 1
            global.maxhp = 20
            break
    }
    
    global.mercy = 1
    global.flag[7] = 0
    global.flag[427] = 1
    global.flag[500] = 0
    global.flag[501] = 0
    global.flag[502] = 0
    global.flag[503] = 0
    global.flag[504] = 0
    global.flag[505] = 0
    global.flag[506] = 0
    global.flag[507] = 0
    global.flag[508] = 0
    global.flag[509] = 0
    global.flag[272] = 0
    global.hp = global.maxhp
    global.flag[99] = global.tempvalue[30]
    global.flag[351] = 1500
    global.tempvalue[12] = 0
    global.battlegroup = global.bossRushMode[global.currentBoss]
    if (global.battlegroup != 999)
    {
        global.currentroom = room_battle
        room_goto(room_battle)
    }
    else
    {
        global.currentroom = room_floweyx
        room_goto(room_floweyx)
    }
    exit
}
if (room == room_bossrushstart && global.currentBoss != -1)
{
    if (bossnumber != global.currentBoss)
    {
        bossnumber = global.currentBoss
        if (bossnumber == 7)
        {
            global.bossrushmusic = caster_load("music/megalostrikeback.ogg")
            caster_loop(global.bossrushmusic, global.musicVolume, 1)
        }
        con += 1
        timer = 76
    }
}
if (con == 3)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "You have braved one&challenge.           %"
    global.msg[1] = "But you're not worthy&enough.                                       %"
    global.msg[2] = "Yet.                                                      %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 4
}
if (con == 5)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "This is interesting.                     %"
    global.msg[1] = "You have great willpower.                                           %"
    global.msg[2] = "But do you have enough&determination?                    %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 6
}
if (con == 7)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "Something about your&skill.              %"
    global.msg[1] = "It baffles me.                                                       %"
    global.msg[2] = "You are one of the&greatest.             &NOT YET.       %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 8
}
if (con == 9)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "Now we enter the unknown.                %"
    global.msg[1] = "There is no telling&what can happen in&this realm.                  %"
    global.msg[2] = "But keep pushing.&Maybe you'll find out.                 %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 10
}
if (con == 11)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "Now it's your turn to&decide.            %"
    global.msg[1] = "Do you believe you have&power?                           %"
    global.msg[2] = "          %"
    global.msg[3] = "I always thought so too.                                     %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 12
}
if (con == 13)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "The biggest leagues&approach.            %"
    global.msg[1] = "Now is the time.                                                     %"
    global.msg[2] = "How will you show your&worth?                            %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 14
}
if (con == 15)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "I can sense your&feelings.               %"
    global.msg[1] = "Because I feel them&too.                                             %"
    global.msg[2] = "You don't know what you&may do now.                      %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 16
}
if (con == 17)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "Try not to get&uncomfortable.            %"
    global.msg[1] = "Because if you do...                     %"
    global.msg[2] = "\RYou'll meet the same&fate as me.                                                     %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 18
}
if (con == 19)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "The final frontier.                      %"
    global.msg[1] = "Will this be your epic&victory?                                      %"
    global.msg[2] = "Or will you crash and&burn?                              %"
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 20
}
if (con == 21)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "             %"
    global.msg[1] = "You have proven your great&capabilities.                             %"
    global.msg[2] = "You have shown great strength.                           %"
    if (global.damageTaken == 0)
    {
        global.msg[3] = "...           %"
        global.msg[4] = "You.          %"
        global.msg[5] = "You've proven yourself&to be&persistent.          %"
        global.msg[6] = "You're one of&the greatest&players ever.          %"
        global.msg[7] = "Until we meet again...                            %"
    }
    if (global.hpRecovered == 0)
    {
        global.msg[3] = "You went through&without any aid.              %"
        global.msg[4] = "As such, you have&a hidden talent.             %"
        global.msg[5] = "But what could it&possibly be?                 %"
        global.msg[6] = "There is no telling&what lies beyond.          %"
        global.msg[7] = "Until we meet again...                         %"
    }
    if (global.hpRecovered > 0 && global.damageTaken > 0)
    {
        global.msg[3] = "You've managed to brave&the worst.             %"
        global.msg[4] = "I cannot tell&if you're good&or bad.           %"
        global.msg[5] = "Perhaps come back&in a few timelines?          %"
        global.msg[6] = "In other words,&you won...                     %"
        global.msg[7] = "\RBut you'll meet&the true horror&ahead./%%"
    }
    instance_create(150, (room_height / 2), OBJ_WRITER)
    con = 22
}
if (con == 22 && (!instance_exists(OBJ_WRITER)))
    room_goto(room_sans_godhome)
