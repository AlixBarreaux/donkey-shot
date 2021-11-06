class_name Turbine_Rotator
extends Sprite


# ----------------------------- DECLARE VARIABLES ------------------------------


export var rotation_speed: float = 0.01


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


func _physics_process(_delta: float) -> void:
	self.rotate(rotation_speed) # * delta


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.rotation_speed > 0.0)

