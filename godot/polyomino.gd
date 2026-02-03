extends Node2D

var squareLocs : PackedVector2Array;
var squares : Array[ColorRect];

func _init():
	
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	squareLocs.append(Vector2i(0,0));
	squareLocs.append(Vector2i(1,0));
	for i in squareLocs:
		ColorRect


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
