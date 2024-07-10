extends Control

class_name DesaparecerContainer
var modulate_default
var tweet

signal finish
# Called when the node enters the scene tree for the first time.
func _ready():
	modulate_default = Color(modulate)
	modulate = Color(modulate.r, modulate.g, modulate.b, 0)
	


func create_animation():
	tweet = create_tween()
	tweet.finished.connect(on_finish)
	tweet.tween_property(self, "modulate", modulate_default, 1)

func on_finish():
	finish.emit()
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
