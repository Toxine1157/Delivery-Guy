extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	#set global score to 0, pause game, reload current scene because replay
	GlobalScore.score = 0
	get_tree().paused = false
	get_tree().reload_current_scene()
