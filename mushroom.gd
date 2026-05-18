extends CharacterBody2D

@onready var animPlayer = $AnimationPlayer
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	move_and_slide()


func _on_attack_range_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	animPlayer.play("Attack")
