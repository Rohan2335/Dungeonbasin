extends Node
var scora = 0

var hearts = 3
@onready var score: Label = $CharacterBody2D/Score

func dec_health():
	hearts -= 1
	print(hearts)
	if (hearts == 0 ):
		get_tree().reload_current_scene()	
func add_candy():
	scora+= 1
	score.text = " candy: " + str(scora)
	
