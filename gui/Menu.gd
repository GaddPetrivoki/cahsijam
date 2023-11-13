extends Control

var scene = preload("res://unit.tscn")

var instance = scene.instantiate()

func _on_pressed():
	instance.set("speed",400)
	instance.set("faction","good")
	
	add_child(instance.duplicate())
	var child = self.get_child(self.get_child_count()-1)
	print(child.get("faction"))
	
