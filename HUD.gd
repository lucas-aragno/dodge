extends CanvasLayer

signal start_game



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Start_Button_pressed():
	$"Start Button".hide()
	emit_signal("start_game")
