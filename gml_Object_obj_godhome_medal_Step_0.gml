rank = global.flag[flagid]
if (glow == 0)
    image_index = rank
count++
if ((irandom_range(0, 10) == 5) && (image_index > 3))
{
    gl = instance_create_depth((x + irandom_range(0, sprite_width)), (y + irandom_range(0, sprite_height)), (depth - 1), obj_eyeflash)
    _scale = random_range(0.4, 0.8)
    gl.image_xscale = _scale
    gl.image_yscale = _scale
    gl.image_speed = random_range(0.25, 0.75)
}
if ((!instance_exists(obj_dialoguer)) && (count < 0))
{
    count = 3
    global.interact = 0
    global.damageDealt = 0
    global.damageTaken = 0
    global.hpRecovered = 0
}
if ((instance_exists(obj_battler) == 0) && ((count > 2) && (global.flag[427] == 1)))
{
    count = -1000000
    global.interact = 1
    if (global.flag[333] == (flagid + 1000))
    {
        temp_value = 0
        if (global.flag[427] == 1)
            temp_value = 1
        if (global.flag[428] == 1)
            temp_value = 2
        if (global.flag[429] == 1)
            temp_value = 3
        global.flag[333] = 0
        global.flag[427] = 0
        global.flag[428] = 0
        global.flag[429] = 0
        global.flag[7] = 1
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        maxScore = (1000 / (global.flag[175] + 1))
        score = (round((maxScore - ((global.damageTaken * 1.4) + (global.hpRecovered * 3)))) * global.speedModifier)
        if (score > 1000)
            temp_value += 1
        if (score >= 1500)
            temp_value += 1
        if (temp_value > global.flag[flagid])
            global.flag[flagid] = temp_value
        if (score > global.flag[scoreFlag])
            global.flag[scoreFlag] = score
        global.msg[0] = (((((("DAMAGE DEALT: " + string(global.damageDealt)) + "&DAMAGE TAKEN: ") + string(global.damageTaken)) + "&HP RECOVERED: ") + string(global.hpRecovered)) + "/")
        global.msg[1] = (("TOTAL SCORE:&" + string(score)) + "/")
        grade = "\RS+"
        if ((score >= 1000) && (score < 1500))
            grade = "\YS"
        if ((score >= 900) && (score < 1000))
            grade = "\YA\W"
        if ((score >= 800) && (score < 900))
            grade = "\GB\W"
        if ((score >= 700) && (score < 800))
            grade = "\LC\W"
        if ((score >= 600) && (score < 700))
            grade = "\PD\W"
        if ((score >= 500) && (score < 600))
            grade = "\RE\W"
        if (score < 500)
            grade = "\RF\W"
        global.msg[2] = (("\WGRADE:&" + grade) + "/%%")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
else if (global.flag[427] == 0)
{
    global.damageDealt = 0
    global.damageTaken = 0
    global.hpRecovered = 0
}
script_execute(scr_depth)
