extends Node2D

#instance other script to be referenced by this script to use its function
var col_detect = load("res://CollisionDetection.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	#add instanced script as a child to this node
	get_node("/root/DeliveryGame").add_child.call_deferred(col_detect)
	#call the referenced script's method and destroy itself
	col_detect.call_deferred("rng_pkg_and_recip")
	col_detect.queue_free()
	
	#start 60s timer
	$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
