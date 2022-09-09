extends Node2D
signal game_over
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
func start():
	#$Node2D/AnimatedSprite.play()
	$Node2D2/Node2D/Torre2/AnimationPlayer.play("Nova Animação")
	#$Node2D2/Torre2/Node2D2/AnimationPlayer.play("Nova Animação")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_fail_click():
	emit_signal("game_over")
