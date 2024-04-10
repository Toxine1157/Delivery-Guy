extends Area2D

var item4 = load("res://item4.tscn")
var item4_instance = item4.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	var item4 = load("res://item4.tscn")
	var item4_instance = item4.instantiate()
	get_node("/root/DeliveryGame").add_child(item4_instance)
	
	get_node("/root/DeliveryGame/RB2DPlayer/PickUp").play()
	
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	pass # Replace with function body.
