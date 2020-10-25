var i;
for (i = 0; i < 9; i++)
{
    medal = instance_create_depth((x - 8), (y - 80), -1000, obj_godhome_medal)
    medal.rank = global.flag[(324 + i)]
    medal.flagid = (324 + i)
    medal.attemptCountFlag = (334 + i)
    medal.scoreFlag = (290 + i)
    sign1 = instance_create_depth((175 + (120 * i)), 130, 100000, obj_godhome_sign)
    sign1.signid = (i + 1)
    if (i == 0)
    {
        toriel = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        toriel.sprite_index = spr_toriel_d
        toriel.x -= (toriel.sprite_width / 2)
        toriel.y -= toriel.sprite_height
        toriel.image_speed = 0
        toriel.bossid = 22
        toriel.lv = 1
        toriel.hp = 20
        toriel.flagid = 324
        toriel.hardflagid = 157
        toriel.expertflagid = 158
        toriel.attemptCountFlag = 334
        toriel.minutesFlag = 226
        toriel.secondsFlag = 227
        toriel.name = "Toriel"
    }
    if (i == 1)
    {
        papyrus = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        papyrus.sprite_index = spr_papyrus_d
        papyrus.x -= (papyrus.sprite_width / 2)
        papyrus.y -= papyrus.sprite_height
        papyrus.image_speed = 0
        papyrus.bossid = 27
        papyrus.lv = 1
        papyrus.hp = 20
        papyrus.flagid = 325
        papyrus.hardflagid = 159
        papyrus.expertflagid = 160
        papyrus.attemptCountFlag = 335
        papyrus.minutesFlag = 228
        papyrus.secondsFlag = 229
        papyrus.name = "Papyrus"
    }
    if (i == 2)
    {
        undyne = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        undyne.sprite_index = spr_undyne_d
        undyne.x -= (undyne.sprite_width / 2)
        undyne.y -= undyne.sprite_height
        undyne.image_speed = 0
        undyne.bossid = 92
        undyne.lv = 10
        undyne.hp = 56
        undyne.flagid = 326
        undyne.hardflagid = 161
        undyne.expertflagid = 162
        undyne.attemptCountFlag = 336
        undyne.minutesFlag = 230
        undyne.secondsFlag = 231
        undyne.name = "Undyne"
    }
    if (i == 3)
    {
        muffet = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        muffet.sprite_index = spr_muffet_overworld
        muffet.x -= (muffet.sprite_width / 2)
        muffet.y -= muffet.sprite_height
        muffet.image_speed = 0
        muffet.bossid = 56
        muffet.lv = 1
        muffet.hp = 20
        muffet.flagid = 327
        muffet.hardflagid = 163
        muffet.expertflagid = 164
        muffet.attemptCountFlag = 337
        muffet.minutesFlag = 232
        muffet.secondsFlag = 233
        muffet.name = "Muffet"
    }
    if (i == 4)
    {
        mettaton = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        mettaton.sprite_index = spr_mettex_npc
        mettaton.x -= (mettaton.sprite_width / 2)
        mettaton.y -= mettaton.sprite_height
        mettaton.image_speed = 0
        mettaton.bossid = 81
        mettaton.lv = 1
        mettaton.hp = 20
        mettaton.flagid = 328
        mettaton.hardflagid = 165
        mettaton.expertflagid = 166
        mettaton.attemptCountFlag = 338
        mettaton.minutesFlag = 234
        mettaton.secondsFlag = 235
        mettaton.name = "Mettaton"
    }
    if (i == 5)
    {
        asgore = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        asgore.sprite_index = spr_asgore_d
        asgore.x -= (asgore.sprite_width / 2)
        asgore.y -= asgore.sprite_height
        asgore.image_speed = 0
        asgore.bossid = 101
        asgore.lv = 1
        asgore.hp = 20
        asgore.flagid = 329
        asgore.hardflagid = 167
        asgore.expertflagid = 168
        asgore.attemptCountFlag = 339
        asgore.minutesFlag = 236
        asgore.secondsFlag = 237
        asgore.name = "Asgore"
    }
    if (i == 6)
    {
        flowey = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        flowey.sprite_index = spr_flowey
        flowey.x -= (flowey.sprite_width / 2)
        flowey.y -= flowey.sprite_height
        flowey.image_speed = 0
        flowey.bossid = 999
        flowey.flagid = 330
        flowey.hardflagid = 169
        flowey.expertflagid = 170
        flowey.attemptCountFlag = 340
        flowey.minutesFlag = 238
        flowey.secondsFlag = 239
        flowey.name = "Flowey"
    }
    if (i == 7)
    {
        sans = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        sans.sprite_index = spr_sans_d
        sans.x -= (sans.sprite_width / 2)
        sans.y -= sans.sprite_height
        sans.image_speed = 0
        sans.bossid = 95
        sans.lv = 19
        sans.hp = 92
        sans.flagid = 331
        sans.hardflagid = 171
        sans.expertflagid = 172
        sans.attemptCountFlag = 341
        sans.minutesFlag = 240
        sans.secondsFlag = 241
        sans.name = "Sans"
    }
    if (i == 8)
    {
        asriel = instance_create_depth(x, y, -1000, obj_sans_godhomenpc)
        asriel.sprite_index = spr_asriel_d
        asriel.x -= (asriel.sprite_width / 2)
        asriel.y -= asriel.sprite_height
        asriel.image_speed = 0
        asriel.bossid = 255
        asriel.lv = 1
        asriel.hp = 20
        asriel.flagid = 332
        asriel.hardflagid = 173
        asriel.expertflagid = 174
        asriel.attemptCountFlag = 342
        asriel.minutesFlag = 242
        asriel.secondsFlag = 243
        asriel.name = "Asriel"
    }
    x += 120
}
