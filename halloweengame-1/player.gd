extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -300.0
@onready var annimated_sprite = $AnimatedSprite2D
@onready var timer: Timer = $Timer

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var equipped = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta


	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		annimated_sprite.play("jump")
		timer.start()
	if Input.is_action_just_pressed("jump"):
		print(annimated_sprite.sprite_frames.get_animation_names())
		annimated_sprite.play("jump")
	if Input.is_action_just_pressed("jump"):
		annimated_sprite.play("jump")
	if Input.is_action_just_pressed("attack"):
		annimated_sprite.play("attack")
		print("htuew  e")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		
		velocity.x = direction * SPEED
		annimated_sprite.play("walk")
		annimated_sprite.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		annimated_sprite.play("idle")
	if not is_on_floor():
		# Jumping or falling — use jump animation
		annimated_sprite.play("jump")

	move_and_slide()
func _ready():
	var spawn = get_tree().current_scene.get_node_or_null("spawn")
	if spawn:
		position = spawn.position
			
func attack():
	if Input.is_action_pressed("attack"):
		print("hauseee")
		
		
func _on_area_2d_body_exited(_body: Node2D):
	if (equipped == 1):
		animated_sprite_2d.play("attack")
