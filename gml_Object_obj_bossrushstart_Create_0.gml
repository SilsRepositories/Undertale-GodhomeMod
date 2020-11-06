caster_free(-3)
global.bossrushmusic = caster_load("music/backbone.ogg")
caster_loop(global.bossrushmusic, global.musicVolume, 1)
con = 0
timer = 0
bossnumber = 99999999
global.isRush = 1
global.flag[519] += 1
global.flag[424] = 0
global.flag[427] = 0
global.flag[428] = 0
global.flag[429] = 0
global.flag[504] = 0
global.flag[509] = 0
global.damageTaken = 0
global.damageDealt = 0
global.hpRecovered = 0
global.currentBoss = -1
