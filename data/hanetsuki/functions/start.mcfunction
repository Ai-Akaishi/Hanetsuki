### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:start
# 羽根突き開始処理

advancement revoke @s only hanetsuki:start
execute as @e[tag=HanetsukiStart] at @s run function hanetsuki:summon
scoreboard objectives add Hanetsuki dummy
execute in minecraft:overworld run schedule function hanetsuki:tick 1t replace
