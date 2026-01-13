extends Projectile
class_name BulletBase

enum BulletType { Enemy, Player, Bomb }

var _direction := Vector2(0, 1)
var _speed := 20.0


func _process(delta: float) -> void:
	position += delta * _speed * _direction


func setup(speed: float, dir: Vector2) -> void:
	_speed = speed
	_direction = dir
