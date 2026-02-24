class_name UI
extends CanvasLayer

@onready var player_healthbar: Healthbar = $UIContainer/PlayerHealthbar

func _init() -> void:
	DamageManager.health_change.connect(on_character_health_change.bind())

func on_character_health_change(type: Character.Type, current_health: int, max_health: int) -> void:
	if type == Character.Type.PLAYER:
		player_healthbar.refresh(current_health, max_health)
