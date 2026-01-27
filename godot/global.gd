extends Node

var N=0

func _ready():
	# Get the screen scale (e.g., 2.0 for Retina, 1.0 for standard)
	var retina_scale = DisplayServer.screen_get_scale(0)
	
	if (get_window().content_scale_factor != retina_scale):
		# Set the content scale factor to match the OS display scale
		#get_tree().root.content_scale_factor = retina_scale
	
		#we need to change, calculate the relative change in scale
		var relative_scale:float = retina_scale / get_window().content_scale_factor
		#apply the change, as well as resizing window based on previous scale and relative scale
		get_window().content_scale_factor = retina_scale
		get_window().size = get_window().size*relative_scale
		get_window().move_to_center()
	
