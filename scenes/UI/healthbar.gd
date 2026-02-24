class_name Healthbar
extends Control

@onready var content_background: ColorRect = $ContentBackground
@onready var health_gauge: TextureRect = $HealthGauge
@onready var white_border: ColorRect = $WhiteBorder

func refresh(current_health: int, max_health: int) -> void:
	white_border.scale.x = max_health + 2
	content_background.scale.x = max_health
	health_gauge.scale.x = current_health
