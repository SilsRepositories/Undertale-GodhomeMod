if ((!instance_exists(mydialoguer)) && (((global.interact == 1) && (global.flag[333] == 0)) && (con == 2)))
{
    con = 0
    myinteract = 0
    global.interact = 0
}
if (con == 1)
    instance_destroy()
if ((myinteract == 1) && (con == 0))
{
    alarm[0] = 1
    con = 2
}
