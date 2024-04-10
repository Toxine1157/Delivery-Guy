extends Area2D

var rng = RandomNumberGenerator.new()
var wh_pkg			#which pkg
var to_recipient 	#to which recipient

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#randomize which package and its recipients
func rng_pkg_and_recip():
	wh_pkg = rng.randi_range(1, 4)
	to_recipient = rng.randi_range(1, 4)
	
	#set package and recipients collision to on or off based on rng
	if wh_pkg == 1:
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitorable", false)
	
	if wh_pkg == 2:
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitorable", false)
	
	if wh_pkg == 3:
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitorable", false)
	
	if wh_pkg == 4:
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Package3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Package4/Area2D").set_deferred("monitorable", true)
	
	
	
	if to_recipient == 1:
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitorable", false)
	
	if to_recipient == 2:
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitorable", false)
	
	if to_recipient == 3:
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitorable", true)
		
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitorable", false)
		
	if to_recipient == 4:
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient1/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient2/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitoring", false)
		get_node("/root/DeliveryGame/Recipient3/Area2D").set_deferred("monitorable", false)
		
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitoring", true)
		get_node("/root/DeliveryGame/Recipient4/Area2D").set_deferred("monitorable", true)
		
