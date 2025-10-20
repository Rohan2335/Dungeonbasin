extends CharacterBody2D
const speed = 60
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var killzone: Area2D = $Killzone
@onready var collision_shape_2d: CollisionShape2D = $Killzone/CollisionShape2D
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
@onready var character_body_2d: CharacterBody2D = $CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RayCastleft.add_exception(character_body_2d)
	$RayCastleft.add_exception(character_body_2d)
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_castright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("walk")
	if ray_castleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("walk")
	position.x += direction * speed * delta
