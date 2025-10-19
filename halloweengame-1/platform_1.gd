extends AnimatableBody2D
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animatable_body_2d: AnimatableBody2D = $"."


const speed = 200
var direction = 1

func _process(delta: float):
	if ray_cast_right.is_colliding():
		direction = -1

	if ray_cast_left.is_colliding():
		direction = 1

	position.x += direction * speed * delta
