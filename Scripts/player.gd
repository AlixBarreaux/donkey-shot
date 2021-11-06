class_name Player
extends KinematicBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var current_speed: int = 500
export var rotation_speed: float = 0.03

var velocity: Vector2 = Vector2(0.0, 0.0)

var up_direction: Vector2 = Vector2(0.0, -1.0)


# Node References
onready var collision_polygon_2d: CollisionPolygon2D = $CollisionPolygon2D


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS ----------------------


func move(movement_input: Vector2) -> void:
	self.velocity = movement_input * self.current_speed
	self.velocity = self.move_and_slide(self.velocity, self.up_direction)


func on_game_over() -> void:
	self.collision_polygon_2d.set_disabled(true)
