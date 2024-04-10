extends Area2D

#instantiate the package from another scene
var item1 = load("res://item1.tscn")
var item1_instance = item1.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	var item1 = load("res://item1.tscn")
	var item1_instance = item1.instantiate()
	#add instanced item as a child to this node
	get_node("/root/DeliveryGame").add_child(item1_instance)
	#play pickup sound effect from this node
	get_node("/root/DeliveryGame/RB2DPlayer/PickUp").play()
	
	#set the collision off so the player can't pick it up again
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	pass # Replace with function body.
