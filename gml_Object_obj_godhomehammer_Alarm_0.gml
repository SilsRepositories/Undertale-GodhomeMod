var i;
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
score = 0
for (i = 0; i < 9; i++)
    score += global.flag[(290 + i)]
if (score > 9000)
{
    scr_itemget(65)
    if (noroom == 0)
    {
        con = 1
        snd_play(snd_mysterygo)
        global.msg[0] = "* You got The Mighty Hammer./%%"
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
    else
    {
        global.msg[0] = "* You're carrying too much./%%"
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
