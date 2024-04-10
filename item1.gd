extends Area2D

#instance other script to be referenced by this script to use its function
var col_detect = load("res://CollisionDetection.gd").new()
# Called when the node enters the scene tree for the first time.
func _ready():
	#add instanced script as a child to this node
	get_node("/root/DeliveryGame").add_child.call_deferred(col_detect)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#follow player position
	get_parent().position = get_node("/root/DeliveryGame/RB2DPlayer").position
	get_parent().position += Vector2(0, -100)
	pass


func _on_area_entered(area):
	if area.get_parent().name == "Recipient1" :
		#play delivered sound effect
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		#destroy itself after delivered
		get_parent().queue_free()
		print("item 1 diantarkan ke recipient 1")
		
		#call the referenced script's method and destroy itself
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		#add globalscore to be used in game and main menu
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	
	if area.get_parent().name == "Recipient2" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 1 diantarkan ke recipient 2")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	if area.get_parent().name == "Recipient3" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 1 diantarkan ke recipient 3")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))

	if area.get_parent().name == "Recipient4" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 1 diantarkan ke recipient 4")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	pass # Replace with function body.
