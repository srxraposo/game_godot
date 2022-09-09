extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _timeout():
	print("alo_aaito")
	queue_free()
# Called when the node enters the scene tree for the first time.
func _ready():
	#wait_time = 2
	connect("timeout", self, "_timeout")
	#start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
