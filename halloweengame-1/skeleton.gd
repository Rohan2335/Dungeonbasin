extends CharacterBody2D

const speed = 60
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var character_body_2d: CharacterBody2D = $"."
@onready var ray_castup: RayCast2D = $RayCastup
@onready var collision_shape_2d: CollisionShape2D = $Killzone/CollisionShape2D




func _ready():
	$RayCastleft.add_exception(character_body_2d)
	$RayCastleft.add_exception(character_body_2d)
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if ray_castright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if ray_castleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	position.x += direction * speed * delta

	
