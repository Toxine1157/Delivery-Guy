extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#take global score to use for in-game score
	self.text = "Score = " + str(GlobalScore.score)
	pass
