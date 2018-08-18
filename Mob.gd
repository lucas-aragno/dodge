extends RigidBody2D

export (int) var min_speed
export (int) var max_speed

var mob_types = ["walk", "swim", "fly"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _on_VisibilityEnabler2D_screen_exited():
	queue_free()
