### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:summon
# 羽根突きの羽根を召喚

summon minecraft:armor_stand ~ ~ ~ {Motion:[0d,1d,0d],Invulnerable:true,Invisible:true,Small:true,ActiveEffects:[{Id:25b,Amplifier:0b,Duration:40,ShowParticles:true,ShowIcon:false,Ambient:false},{Id:28b,Amplifier:0b,Duration:2147483647,ShowParticles:false,ShowIcon:false,Ambient:false}],Tags:[Hanetsuki,HanetsukiBase],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:black_wool",Count:1b,tag:{Glowing:false}},PickupDelay:32767s,Age:-2147483648,Tags:[Hanetsuki,HanetsukiItem,HanetsukiItemBottom],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:feather",Count:1b,tag:{Glowing:false}},PickupDelay:32767s,Age:-2147483648,Tags:[Hanetsuki,HanetsukiItem,HanetsukiItemTop]}]}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:0,WaitTime: 6000,Tags:[Hanetsuki,HanetsukiMarker],Particle:"minecraft:block minecraft:air"}
kill @s[tag=HanetsukiStart]
