execute as @a unless score @s crouchDetect matches 0..1 run scoreboard players set @s crouchDetect 0
execute as @a if score @s crouchDetect matches 1 run scoreboard players set @s crouchDetect 0