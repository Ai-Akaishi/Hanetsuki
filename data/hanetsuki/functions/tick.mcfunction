### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:tick
# 羽根突き用tick

# 光らせるタイマーセット
execute as @a[nbt={SelectedItem:{id:"minecraft:birch_sign"}}] at @s anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^ ^1 ^ anchored feet as @e[tag=HanetsukiItem,distance=..1.0] run data modify entity @s Item.tag.Glowing set value 4
# 発光状態更新
execute as @e[tag=HanetsukiItem] run function hanetsuki:update_glowing

# ヒットした時の処理
execute as @a[nbt={SelectedItem:{id:"minecraft:birch_sign"}}] at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^ ^-1 ^ rotated as @s run function hanetsuki:on_check

# 羽根突きの土台の削除
execute as @e[tag=HanetsukiBase] if data entity @s {OnGround:true} run function hanetsuki:drop
# ゲーム用tickの再スケジュール
execute if entity @e[tag=HanetsukiBase] in minecraft:overworld run schedule function hanetsuki:tick 1t replace
execute unless entity @e[tag=HanetsukiBase] run function hanetsuki:clean_up
