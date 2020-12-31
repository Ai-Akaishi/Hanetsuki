### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:update_glowing
# 発光を制御する

# 発光の更新
execute unless data entity @s Item.tag{Glowing:0} run data modify entity @s Glowing set value true
execute if data entity @s Item.tag{Glowing:0} run data modify entity @s Glowing set value false

# 発光状態によって、土台のタグを更新
execute if entity @s[tag=HanetsukiItemBottom] unless data entity @s Item.tag{Glowing:0} at @s positioned ~ ~-0.74 ~ run tag @e[tag=HanetsukiBase,distance=..0.1,limit=1] add HanetsukiHittable
execute if entity @s[tag=HanetsukiItemBottom] if data entity @s Item.tag{Glowing:0} at @s positioned ~ ~-0.74 ~ run tag @e[tag=HanetsukiBase,distance=..0.1,limit=1] remove HanetsukiHittable
execute if entity @s[tag=HanetsukiItemBottom] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 0 0 0 1

# タイマーの進行
execute store result entity @s Item.tag.Glowing int 1 run data get entity @s Item.tag.Glowing 0.9999999999
