extends Area2D

var item2 = load("res://item2.tscn")
var item2_instance = item2.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	var item2 = load("res://item2.tscn")
	var item2_instance = item2.instantiate()
	get_node("/root/DeliveryGame").add_child(item2_instance)
	
	get_node("/root/DeliveryGame/RB2DPlayer/PickUp").play()
	
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	pass # Replace with function body.
