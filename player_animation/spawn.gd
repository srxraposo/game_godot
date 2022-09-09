extends Node2D
export (PackedScene) var escada
export (PackedScene) var estrutura

var escadas = []
var estruturas = []

func f():
	if escadas[0].global_position.y > 1000:
		escadas.pop_front().queue_free()
		estruturas.pop_front().queue_free()
		gerar(1, 3)
	
	

func gerar(a: int, b: int):
	for _i in range(b):
		var d = estrutura.instance()
		#print(estruturas[-1].position.y)
		d.position = Vector2(0, estruturas[-1].position.y - 1440)
		d.z_index = -1
		estruturas.append(d)
		add_child(d)
		
	for _i in range(a):
		var c = escada.instance()
		c.position = Vector2(0, escadas[-1].position.y - 1518)
		c.z_index = 0
		escadas.append(c)
		add_child(c)
	


# Called when the node enters the scene tree for the first time.
func _ready():
	escadas.append($Base)
	escadas.append($Respawn)
	estruturas.append($Respawn3)
	
	gerar(6, 6)
	
func _fail_click():
	$AnimationPlayer.play("queda_2")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
