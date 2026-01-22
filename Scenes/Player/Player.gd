extends Area2D


class_name Player


const GROUP_NAME: String = "Player"


@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var shield: Shield = $Shield



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _enter_tree() -> void:
	add_to_group(GROUP_NAME)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	print("area entered player")
	if area is PowerUp:
		print("area entered player os power up yes")
		match area.power_up_type:
			PowerUp.PowerUpType.Shield:
				print("area entered player os power up yes is sheild type")
				shield.enable_shield()
