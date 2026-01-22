class_name Shield extends Area2D

@export var start_health := 5
@onready var sound: AudioStreamPlayer2D = $Sound
@onready var timer: Timer = $Timer
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var _current_health := start_health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#enable_shield()
	disable_shield()


func enable_shield() -> void:
	animation_player.play("RESET")
	_current_health = start_health
	timer.start()
	SpaceUtils.toggle_area2d(self, true)
	sound.play()
	show()


func disable_shield() -> void:
	timer.stop()
	SpaceUtils.toggle_area2d(self, false)
	hide()


func hit() -> void:
	animation_player.play("hit")
	_current_health -= 1
	if _current_health <= 0:
		disable_shield()


func _on_area_entered(area: Area2D) -> void:
	hit()


func _on_timer_timeout() -> void:
	disable_shield()
