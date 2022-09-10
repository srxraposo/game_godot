extends Node2D
signal game_over
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Tutorial/A.visible = false
	randomize()
	
func start():
	#$Node2D/AnimatedSprite.play()
	if get_parent().score == null:
		$Node2D2/Node2D/Torre2/AnimationPlayer.play("Primeira")
	else:
		start_game()

func start_game():
	$Node2D2/Node2D/Torre2/AnimationPlayer.play("Nova Animação")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func tutorial_pause():
	$Tutorial/A.visible = true
	$Node2D2/Node2D/Torre2/AnimationPlayer.stop(false)
	
func _input(event):
	var k = $Node2D2/Node2D/Torre2/AnimationPlayer
	if !k.is_playing():
		if event is InputEventKey and event.pressed:
			$Control/TextProgress.visible = false
			k.play()
			$Control/AnimationPlayer.play("input_3")
			$Tutorial/A.visible = false
			
func _on_Timer_fail_click():
	emit_signal("game_over")
