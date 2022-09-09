extends Timer
var click = false
signal fail_click
var current

func timer_input_start(a: float):
	click = false
	one_shot = true
	wait_time = a
	start()
	

func _timeout():
	if not click:
		$"../TextProgress".visible = false
		$"../TextProgress2".visible = false
		$"../TextProgress3".visible = false
		$"../RichTextLabel".visible = false
		emit_signal("fail_click")
		

# Called when the node enters the scene tree for the first time.
func _ready():
	one_shot = true
	

func _input(event):
	#print(self.get_children())
	if not is_stopped():
		if get_parent().name == "Control":
			current = "A"
		else:
			current = "D"
			
		if event.is_action_pressed(current):#current_option):
			#var a: AnimationPlayer = get_node("/root/Node/Control/AnimationPlayer")
			$"../TextProgress".visible = false
			$"../AnimationPlayer".play("input_3")
			$"../AudioStreamPlayer2D".play()
			stop()
