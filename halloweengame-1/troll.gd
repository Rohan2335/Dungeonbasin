extends CharacterBody2D
@onready var raycastforward: RayCast2D = $raycastforward
@onready var ray_castcoli: RayCast2D = $RayCastcoli
@onready var ray_castplayer: RayCast2D = $RayCastplayer
@onready var ray_castplayer_5: RayCast2D = $RayCastplayer5
@onready var ray_castplayer_6: RayCast2D = $RayCastplayer6
@onready var ray_castplayer_2: RayCast2D = $RayCastplayer2
@onready var ray_castplayer_3: RayCast2D = $RayCastplayer3
@onready var ray_castplayer_4: RayCast2D = $RayCastplayer4
@onready var tile_map: TileMap = $"../TileMap"
@onready var character_body_2d: CharacterBody2D = $"../CharacterBody2D"

var direction = 1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
const speed = 80
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@onready var raycastback: RayCast2D = $raycastback
@onready var spriteleft: Node = $"../Spriteleft"
@onready var spritesright: Node = $"../spritesright"
@onready var timer: Timer = $Timer
@onready var gamemanage: Node = %Gamemanage

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if raycastforward.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("walk")
	if raycastback.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("walk")
	position.x += direction * speed * delta

#	if ray_castplayer_2.is_colliding():
#		direction = -1
		
		


func _on_area_2d_body_entered(_body: Node2D):
	if(_body.name == "CharacterBody2D"):
		animated_sprite_2d.play("attack")
		print("attack")
		timer.start()
#	gamemanage.dec_health()


func _on_area_2d_body_exited(_body: Node2D):
	animated_sprite_2d.play("walk")
	print("done attack") # Replace with function body.


func _on_timer_timeout() -> void:
	animated_sprite_2d.play("walk") # Replace with function body.
