### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> hanetsuki:get
# 羽根付きセットを作った時

recipe take @s hanetsuki:hanetsuki
advancement revoke @s only hanetsuki:get
give @s minecraft:armor_stand{EntityTag:{Tags:[HanetsukiStart]},HanetsukiStart:true,display:{Name:'{"text":"羽根突きセット","bold":true,"italic":false,"color":"aqua"}',Lore:['{"text":"地面に右クリックして","color":"white","italic":false}','{"text":"羽根突きを開始！","color":"white","italic":false}']}}
