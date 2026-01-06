extends Node2D


const ADD_OBJECT: String = "add_object"
const EXPLOSION = preload("uid://dyyiji818kono")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.on_create_explosion.connect(on_create_exploision)


func add_object(obj: Node, pos: Vector2) -> void:
	add_child(obj)
	obj.global_position = pos


func on_create_exploision(pos: Vector2, anim_name: String) -> void:
	var scene: Explosion = EXPLOSION.instantiate()
	scene.setup(anim_name)
	call_deferred(ADD_OBJECT, scene, pos)
	
