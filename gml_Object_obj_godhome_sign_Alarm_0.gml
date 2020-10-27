myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
switch signid
{
    case 0:
        global.msg[0] = "* Welcome to GODHOME!&  Here, you can challenge&  at your own desire./"
        global.msg[1] = "* Complete them however you want.&  However, we will rate your&  skill./"
        global.msg[2] = "* Just completing it will earn&  you a BRONZE MEDAL./"
        global.msg[3] = "* If you can do it without aid,&  you earn the SILVER MEDAL./"
        global.msg[4] = "* A GOLD MEDAL is only given to&  those who are worthy./"
        global.msg[5] = "* A PLATINUM MEDAL is... shh.&  It's a secret./"
        global.msg[6] = "* Those who dare seek great&  knowledge about monsters&  challenge themselves./"
        global.msg[7] = "* Those who don't dare fail&  to understand the true power&  of humanity. - Godseeker/%%"
        break
    case 1:
        global.msg[0] = "* TORIEL - Keeper of the Ruins/"
        global.msg[1] = "* Not a difficult boss at all.&  After all, she tested you./%%"
        break
    case 2:
        global.msg[0] = "* PAPYRUS - Royal Guardsman/"
        global.msg[1] = "* Wait, wasn't the Royal Guard&  disbanded a while ago?/%%"
        break
    case 3:
        global.msg[0] = "* UNDYNE - Royal Leader/"
        global.msg[1] = "* The sacrifice during the war.&  Powerful with determination.&  Never gives up./%%"
        break
    case 4:
        global.msg[0] = "* MUFFET - Spider Queen/"
        global.msg[1] = "* Everyone forgot about her.&  No idea why./%%"
        break
    case 5:
        global.msg[0] = "* METTATON - Underground Star/"
        global.msg[1] = "* Still a violent robot.&  Blame Alphys for that./%%"
        break
    case 6:
        global.msg[0] = "* ASGORE - King of Monsters/"
        global.msg[1] = "* Still a coward.&  Regrets everything he did./%%"
        break
    case 7:
        global.msg[0] = "* FLOWEY - Flower/"
        global.msg[1] = "* Still wants to stop you.&  He just doesn't want to&  tell you./%%"
        break
    case 8:
        global.msg[0] = "* SANS - Time Jumper?/"
        global.msg[1] = "* Is this a copy?&  Or is this the real one?/%%"
        break
    case 9:
        global.msg[0] = "* ASRIEL - Unfortunate Child/"
        global.msg[1] = "* Filled with determination.&  Just like you./%%"
        break
    case 10:
        global.msg[0] = "* MAD DUMMY - Angry Dummy/"
        global.msg[1] = "* Hates you for nothing.&  Beat him up./%%"
        break
}

mydialoguer = instance_create(0, 0, obj_dialoguer)
