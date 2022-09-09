extends Node
export (PackedScene) var game
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var k = null

# Called when the node enters the scene tree for the first time.
func _ready():
	$Press/AnimationPlayer.play("Piscadela")
	
func _input(event):
	if event is InputEventKey and event.pressed and k == null:
		$Titulo.hide()
		$Press.hide()
		k = game.instance()
		k.connect("game_over", self, "back_to_main_screen")
		add_child(k)
		k.start()

func back_to_main_screen():
	remove_child(k)
	k = null
	$Titulo.show()
	$Press.show()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
