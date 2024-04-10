extends RigidBody2D

#set movement speed
@export var moveSpeed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#doesn't move if not pressing any move key
	var velocity = Vector2.ZERO # The player's movement vector.
	
	#move right
	if Input.is_action_pressed("move_right"):
		apply_central_force(Vector2(3000, 0))

	#move left
	if Input.is_action_pressed("move_left"):
		apply_central_force(Vector2(-3000, 0))

func _input(event):
	#show pause menu and pause game
	if event.is_action_pressed("un_pause_game"):
		$Sprite2D/Camera2D/BGPauseMenu.show()
		get_tree().paused = true
		

func _on_timer_timeout():
	#when time runs out show game over menu and paused game
	$Sprite2D/Camera2D/BGGameOver.show()
	get_tree().paused = true
	pass # Replace with function body.
