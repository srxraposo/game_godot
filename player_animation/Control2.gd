extends Control
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a = AnimationPlayer

func f():
	#$AnimationPlayer
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	#connect("fail_click", self, "_fail_click")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

func _fail_click():
	queue_free()
	
