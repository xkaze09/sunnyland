extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player
var chase = false


func _physics_process(delta):
	# Add the gravity.
	velocity.y += gravity * delta
	player = get_node("../../Player/Player")
	var direction = (player.position - self.position).normalized()
	if direction.x > 0:
		print("Right")
	else:
		print("Left")
		
	move_and_slide()
	
func _on_player_detection_body_entered(body):
	if body.name == "Player":
		chase = true
