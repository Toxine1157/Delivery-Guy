extends Area2D

var col_detect = load("res://CollisionDetection.gd").new()
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/DeliveryGame").add_child.call_deferred(col_detect)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().position = get_node("/root/DeliveryGame/RB2DPlayer").position
	get_parent().position += Vector2(0, -100)
	pass


func _on_area_entered(area):
	if area.get_parent().name == "Recipient1" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 4 diantarkan ke recipient 1")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	if area.get_parent().name == "Recipient2" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 4 diantarkan ke recipient 2")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	if area.get_parent().name == "Recipient3" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 4 diantarkan ke recipient 3")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))

	if area.get_parent().name == "Recipient4" :
		get_node("/root/DeliveryGame/RB2DPlayer/Deliver").play()
		
		get_parent().queue_free()
		print("item 4 diantarkan ke recipient 4")
		col_detect.rng_pkg_and_recip()
		col_detect.queue_free()
		
		GlobalScore.score += 5
		print("Score Global = " + str(GlobalScore.score))
		
	pass # Replace with function body.
