extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	#set global score to 0 and go to delivery game scene
	GlobalScore.score = 0
	get_tree().change_scene_to_file("res://delivery_game.tscn")
