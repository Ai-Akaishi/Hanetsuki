### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:on_check
# 羽根突きヒットした時

## プレイヤーの向きを保存
data modify storage hanetsuki: Rotation set from entity @s Rotation

execute as @e[tag=HanetsukiHittable,distance=..1.0] run function hanetsuki:on_hit
