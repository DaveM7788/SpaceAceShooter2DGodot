class_name UiButton
extends TextureButton

@export var button_text: String
@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = button_text
