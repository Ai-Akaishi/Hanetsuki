### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:on_hit
# 羽根突きヒットした時

# チャンクロード依存しないために原点を使わない
# 計算用エンティティを１つに絞る
tag @e[tag=HanetsukiMarker,sort=nearest,limit=1] add HanetsukiMarkerActive
# 向きを取得
data modify entity @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] Rotation set from storage hanetsuki: Rotation
execute positioned as @s as @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] rotated as @s run tp @s ^ ^ ^1 ~ ~

# ランダム性を更新
execute store result entity @s Rotation[0] float 0.001 run data get entity @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] Rotation[0] 180000

# モーション計算
execute store result score X Hanetsuki run data get entity @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] Pos[0] 1000
execute store result score X2 Hanetsuki run data get entity @s Pos[0] 1000
scoreboard players operation X Hanetsuki -= X2 Hanetsuki
execute store result score Y Hanetsuki run data get entity @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] Pos[1] 1000
execute store result score Y2 Hanetsuki run data get entity @s Pos[1] 1000
scoreboard players operation Y Hanetsuki -= Y2 Hanetsuki
execute store result score Z Hanetsuki run data get entity @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] Pos[2] 1000
execute store result score Z2 Hanetsuki run data get entity @s Pos[2] 1000
scoreboard players operation Z Hanetsuki -= Z2 Hanetsuki

# モーション代入
execute store result entity @s Motion[0] double 0.001 run scoreboard players get X Hanetsuki
execute store result entity @s Motion[1] double 0.001 run scoreboard players get Y Hanetsuki
execute store result entity @s Motion[2] double 0.001 run scoreboard players get Z Hanetsuki

# タグ解除
tag @e[tag=HanetsukiMarkerActive,sort=nearest,limit=1] remove HanetsukiMarkerActive

# ヒット音
playsound minecraft:block.lantern.break master @a ~ ~ ~ 1 2
