extends Node

export (PackedScene) var Mob

func _ready():
	randomize()

func game_over():
	$MobTimer.stop()

func new_game():
	$Player.start($StartPosition.position)
	#®$StartTimer.start()
	print("new game")

func _on_StartTimer_timeout():
	$MobTimer.start()

func _on_MobTimer_timeout():
    $MobPath/MobSpawnLocation.set_offset(randi())
    var mob = Mob.instance()
    add_child(mob)
    var direction = $MobPath/MobSpawnLocation.rotation + PI / 2
    mob.position = $MobPath/MobSpawnLocation.position
    direction += rand_range(-PI / 4, PI / 4)
    mob.rotation = direction
    mob.set_linear_velocity(Vector2(rand_range(mob.min_speed, mob.max_speed), 0).rotated(direction))

func _on_HUD_start_game():
	print("AAAA")
	new_game()
	#new_game()
