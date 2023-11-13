extends Area2D

var scene = preload("res://gui/menu.tscn")
var instance = scene.instantiate()
var selected = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
		add_child(instance)
	
