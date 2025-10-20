extends Area2D

@onready var gamemanage: Node = %Gamemanage
@onready var gamemanage_2: Node = %Gamemanage2


func _on_body_entered(_body: Node2D) -> void:
	gamemanage.add_candy()
	queue_free()
