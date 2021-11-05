class_name Player
extends KinematicBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------

export var current_speed: int = 500
export var rotation_speed: float = 0.03

var velocity: Vector2 = Vector2(0.0, 0.0)

var up_direction: Vector2 = Vector2(0.0, -1.0)


# ---------------------------------- RUN CODE ----------------------------------

func move(movement_input: Vector2) -> void:
	self.velocity = movement_input * self.current_speed
	self.velocity = self.move_and_slide(self.velocity, self.up_direction)


func rotate(rotation_input: float) -> void:
	print(rotation_input)
#	self.rotation_degrees += self.rotation_speed
#	self.rotate(self.rotation_speed * rotation_input)

func _physics_process(delta: float) -> void:
#	self.rotate(0.03 * -1)
#	self.rotate(rotation_speed)
	rotation = rotation_speed * delta

# ------------------------------ DECLARE FUNCTIONS ----------------------

#func _integrate_forces(state: Physics2DDirectBodyState) -> void:
##	applied_force.x = 10
#	move()


#func move(move_input: Vector2) -> void:
#	self.velocity = move_input * self.current_speed
#	applied_force = self.velocity
