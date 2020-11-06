rank = global.flag[flagid]
if (glow == 0)
    image_index = rank
count++
if (irandom_range(0, 6) == 5 && image_index > 3)
{
    gl = instance_create_depth((x + irandom_range(3, (sprite_width - 3))), (y + irandom_range(3, (sprite_height - 3))), (depth - 1), obj_eyeflash)
    _scale = random_range(0.4, 0.8)
    gl.image_xscale = _scale
    gl.image_yscale = _scale
    gl.image_speed = random_range(0.25, 0.75)
}
if ((!instance_exists(obj_dialoguer)) && count < 0)
{
    count = 3
    global.interact = 0
    global.damageDealt = 0
    global.damageTaken = 0
    global.hpRecovered = 0
    global.deaths = 0
}
if (global.isRush == 1)
{
    instance_destroy(obj_bossrushstart)
    global.flag[504] = 0
    count = -1000000
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
    global.xp = 0
    global.gold = 0
    global.flag[7] = 1
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.interact = 1
    maxScore = 10000
    score = round(((maxScore - ((global.damageTaken * 2) + (global.hpRecovered * 3.5))) / (global.deaths + 1)))
    if (score > 9000)
        temp_value += 1
    if (score == 10000)
        temp_value += 1
    if (temp_value > global.flag[517])
        global.flag[517] = temp_value
    if (score > global.flag[518])
        global.flag[518] = score
    global.msg[0] = (((((("DAMAGE DEALT: " + string(global.damageDealt)) + "&DAMAGE TAKEN: ") + string(global.damageTaken)) + "&HP RECOVERED: ") + string(global.hpRecovered)) + "/")
    global.msg[1] = (("DEATHS: " + string(global.deaths)) + "/")
    global.msg[2] = (("TOTAL SCORE:&" + string(score)) + "/")
    grade = "\RS+"
    if (score >= 9900 && score < 10000)
        grade = "\YS"
    if (score >= 9800 && score < 9900)
        grade = "\YA\W"
    if (score >= 9700 && score < 9800)
        grade = "\GB\W"
    if (score >= 9600 && score < 9700)
        grade = "\LC\W"
    if (score >= 9500 && score < 9600)
        grade = "\PD\W"
    if (score >= 9000 && score < 9500)
        grade = "\RE\W"
    if (score < 9000)
        grade = "\RF\W"
    global.isRush = 0
    global.msg[3] = (("\WGRADE:&" + grade) + "/%%")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (global.flag[513] == 1)
{
    global.flag[504] = 0
    count = -1000000
    temp_value = 0
    global.filechoice = 1
    scr_load()
    global.filechoice = 0
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
    global.xp = 0
    global.gold = 0
    global.flag[7] = 1
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.interact = 1
    maxScore = 1000000
    score = round(((maxScore - ((global.damageTaken * 10) + (global.hpRecovered * 100))) / (global.deaths + 1)))
    if (score > 990000)
        temp_value += 1
    if (score == 1000000)
        temp_value += 1
    if (temp_value > global.flag[514])
        global.flag[514] = temp_value
    if (score > global.flag[515])
        global.flag[515] = score
    global.msg[0] = (((((("DAMAGE DEALT: " + string(global.damageDealt)) + "&DAMAGE TAKEN: ") + string(global.damageTaken)) + "&HP RECOVERED: ") + string(global.hpRecovered)) + "/")
    global.msg[1] = (("DEATHS: " + string(global.deaths)) + "/")
    global.msg[2] = (("TOTAL SCORE:&" + string(score)) + "/")
    grade = "\RS+"
    if (score >= 990000 && score < 1000000)
        grade = "\YS"
    if (score >= 980000 && score < 990000)
        grade = "\YA\W"
    if (score >= 970000 && score < 980000)
        grade = "\GB\W"
    if (score >= 960000 && score < 970000)
        grade = "\LC\W"
    if (score >= 950000 && score < 960000)
        grade = "\PD\W"
    if (score >= 900000 && score < 950000)
        grade = "\RE\W"
    if (score < 900000)
        grade = "\RF\W"
    global.flag[513] = 0
    global.msg[3] = (("\WGRADE:&" + grade) + "/%%")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (instance_exists(obj_battler) == 0 && count > 2 && global.flag[427] == 1)
{
    global.flag[504] = 0
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
        global.xp = 0
        global.gold = 0
        global.flag[7] = 1
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        maxScore = (1000 / (global.flag[175] + 1))
        score = ((round((maxScore - ((global.damageTaken * 1.4) + (global.hpRecovered * 3)))) * global.speedModifier) / (global.deaths + 1))
        if (score > 1000)
            temp_value += 1
        if (score >= 1500)
            temp_value += 1
        if (temp_value > global.flag[flagid])
            global.flag[flagid] = temp_value
        if (score > global.flag[scoreFlag])
            global.flag[scoreFlag] = score
        global.msg[0] = (((((("DAMAGE DEALT: " + string(global.damageDealt)) + "&DAMAGE TAKEN: ") + string(global.damageTaken)) + "&HP RECOVERED: ") + string(global.hpRecovered)) + "/")
        global.msg[1] = (("DEATHS: " + string(global.deaths)) + "/")
        global.msg[2] = (("TOTAL SCORE:&" + string(score)) + "/")
        grade = "\RS+"
        if (score >= 1000 && score < 1500)
            grade = "\YS"
        if (score >= 900 && score < 1000)
            grade = "\YA\W"
        if (score >= 800 && score < 900)
            grade = "\GB\W"
        if (score >= 700 && score < 800)
            grade = "\LC\W"
        if (score >= 600 && score < 700)
            grade = "\PD\W"
        if (score >= 500 && score < 600)
            grade = "\RE\W"
        if (score < 500)
            grade = "\RF\W"
        global.msg[3] = (("\WGRADE:&" + grade) + "/%%")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
else if (global.flag[427] == 0)
{
    global.damageDealt = 0
    global.damageTaken = 0
    global.hpRecovered = 0
    global.deaths = 0
}
script_execute(scr_depth)
