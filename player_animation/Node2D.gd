extends Node2D
signal score

var a = position
var count = 0

func sett_position():
	count += 1
	if count >= 3:
		a = Vector2(0, 510)
		count = 0
	else:
		a = Vector2(0, 504)
	emit_signal("score")
	#print(a, count)
	
func move():
	$Torre2.f()
	position += a


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Node2D2/AnimationPlayer.play("Nova Animação")

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
