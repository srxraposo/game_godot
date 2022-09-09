extends Node
export (PackedScene) var game
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var k = null
var inicial
var final

# Called when the node enters the scene tree for the first time.
func _ready():
	inicial = get_node("Inicial")
	final = get_node("Pontuacao")
	inicial.get_node("Press/AnimationPlayer").play("Piscadela")
	final.get_node("Pontuacao_partida").hide()
	
func _input(event):
	if event is InputEventKey and event.pressed and k == null:
		inicial.get_node("Titulo").hide()
		inicial.get_node("Press").hide()
		k = game.instance()
		k.connect("game_over", self, "back_to_main_screen")
		add_child(k)
		k.start()

func back_to_main_screen():
	remove_child(k)
	k = null
	#inicial.get_node("Titulo").show()
	#inicial.get_node("Press").show()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
