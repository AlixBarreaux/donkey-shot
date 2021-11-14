class_name Projectile
extends RigidBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var score_value: int = 10

export var textures_list: Array = []


# Node References
onready var sprite: Sprite = $Sprite
onready var visibility_notifier_2d: VisibilityNotifier2D = $VisibilityNotifier2D


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self.randomize_sprite_texture()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func randomize_sprite_texture() -> void:
	randomize()
	var _random_index: int = randi() % textures_list.size()
	var texture_instance = load(textures_list[_random_index])
	self.sprite.texture = texture_instance


func die() -> void:
	Global.decrease_current_lives(1)
	self.queue_free()


func mark_points() -> void:
	Global.increase_current_score(self.score_value)
	self.queue_free()
