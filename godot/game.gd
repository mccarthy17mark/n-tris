extends CanvasLayer

var game_active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$N_tris_label.text = str(Global.N) + "-tris" 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("StartGame"):
		$StartPrompt.hide()
		game_active = true

func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
