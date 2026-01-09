extends Projectile
class_name PowerUp

enum PowerUpType { Health, Shield }
var speed := 10.0

const TEXTURES: Dictionary = {
	PowerUpType.Shield: preload("res://assets/misc/shield_gold.png"),
	PowerUpType.Health: preload("res://assets/misc/powerupGreen_bolt.png")
}

var power_up_type := PowerUpType.Shield:
	get: return power_up_type


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
