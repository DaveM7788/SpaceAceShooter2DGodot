extends Node


signal on_player_hit(v: int)
signal on_score_updated(v: int)
signal on_create_explosion(pos: Vector2, anim_name: String)
signal on_create_powerup(pos: Vector2, pu_type: PowerUp.PowerUpType)
signal on_create_random_powerup(pos: Vector2)
signal on_create_bullet(
	pos: Vector2, dir: Vector2, speed: float, b_type: BulletBase.BulletType
)

func emit_on_player_hit(v: int) -> void:
	on_player_hit.emit(v)


func emit_on_score_updated(v: int):
	on_score_updated.emit(v)


func emit_on_create_exploision(pos: Vector2, anim_name: String) -> void:
	on_create_explosion.emit(pos, anim_name)


func emit_on_create_powerup(
	pos: Vector2,
	pu_type: PowerUp.PowerUpType
) -> void:
	on_create_powerup.emit(pos, pu_type)


func emit_on_create_random_powerup(pos: Vector2) -> void:
	on_create_random_powerup.emit(pos)

func emit_on_create_bullet(
	pos: Vector2, dir: Vector2, speed: float, b_type: BulletBase.BulletType
) -> void:
	on_create_bullet.emit(pos, dir, speed, b_type)
