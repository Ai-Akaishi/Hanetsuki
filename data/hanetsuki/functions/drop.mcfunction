### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:drop
# 落ちたらバラバラにする

execute at @s positioned ~ ~0.83 ~ as @e[tag=HanetsukiItem,distance=..0.1] run data modify entity @s PickupDelay set value 30s
kill @s
