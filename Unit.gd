extends CharacterBody2D

@onready var range = get_node("Area2D")
@export var speed = 400 # How fast the player will move (pixels/sec).
@export_enum("good","evil") var faction : String
var screen_size # Size of the game window.
var target = position


func _ready():
	
	$AnimatedSprite2D.animation = "default"
	add_to_group(faction)
	

func _input(event):
	
	if event.is_action_pressed("click") :
		
		target = get_global_mouse_position()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	
	# Move to area right now just moves all units.
	if position.distance_to(target) > 10 and is_in_group("good"):
		look_at(target)
		move_and_slide()
	
	if range.has_overlapping_bodies(): 
		var bodies = range.get_overlapping_bodies()
		
		# Checks Faction
		for x in bodies:
			if x.faction != faction:
				$AnimatedSprite2D.animation = "angry"
			else:
				$AnimatedSprite2D.animation = "default"
		
		
func select():
	pass 
		
	
	

