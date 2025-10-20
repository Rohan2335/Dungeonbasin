extends Node
var scora = 0
@onready var score: Label = $"../CharacterBody2D/Score"

func add_candy():
	scora+= 1
	score.text = " candy " + str(scora)
	
