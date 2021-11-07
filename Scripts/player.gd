class_name Player
extends KinematicBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var current_speed: int = 1700

var velocity: Vector2 = Vector2(0.0, 0.0)

var up_direction: Vector2 = Vector2(0.0, -1.0)


# Node References
onready var collision_polygon_2d: CollisionPolygon2D = $CollisionPolygon2D


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)
	self.animation_tree.set_active(true)


# ------------------------------ DECLARE FUNCTIONS ----------------------


onready var animation_tree: AnimationTree = $AnimationTree
onready var animation_tree_node_sm_playback = animation_tree.get("parameters/playback")

func move(movement_input: Vector2) -> void:
	self.velocity = movement_input * self.current_speed
	self.velocity = self.move_and_slide(self.velocity, self.up_direction)
	
	if not self.velocity == Vector2(0.0, 0.0):
		# Set the animation Tree to play Animation Move with the velocity
		self.animation_tree.set("parameters/Move/blend_position", self.velocity)
		self.animation_tree_node_sm_playback.travel("Move")
	else:
		self.animation_tree_node_sm_playback.travel("Idle")


func on_game_over() -> void:
	self.collision_polygon_2d.set_disabled(true)
