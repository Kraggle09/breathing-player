# Initializing scores for players without them
execute if score @s timeToBreath matches 70 unless score @s timeSinceBreath matches 0..70 run scoreboard players set @s timeSinceBreath 0
execute if score @s timeToBreath matches 50 unless score @s timeSinceBreath matches 0..50 run scoreboard players set @s timeSinceBreath 0
execute if score @s timeToBreath matches 20 unless score @s timeSinceBreath matches 0..20 run scoreboard players set @s timeSinceBreath 0

# Setting timeToBreath
execute as @s if predicate breathing:sprinting run scoreboard players set @s timeToBreath 20
execute as @s if predicate breathing:sneaking run scoreboard players set @s timeToBreath 65
execute unless predicate breathing:sneaking unless predicate breathing:sprinting run scoreboard players set @s timeToBreath 50

# Breathing Logic
execute as @s if score @s timeSinceBreath = @s timeToBreath at @s run function breathing:breath

# Adjust scores
execute as @s run scoreboard players add @s timeSinceBreath 1