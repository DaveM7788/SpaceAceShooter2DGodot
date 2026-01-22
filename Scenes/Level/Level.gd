extends Node2D


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("test"):
		#SignalHub.emit_on_create_exploision(Vector2(100, 100), Explosion.EXPLODE)
		SignalHub.emit_on_create_powerup(Vector2(325, 220), PowerUp.PowerUpType.Shield)
		#SignalHub.emit_on_create_random_powerup(Vector2(200, 200))
		#SignalHub.emit_on_create_bullet(Vector2(310, 210), Vector2(0, 1).normalized(), 40.0, BulletBase.BulletType.Bomb)
