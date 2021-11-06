class_name ProjectileSpawnLocations
extends Path2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var projectile_scene: PackedScene = null

onready var spawn_location: PathFollow2D = $SpawnLocation


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.projectile_scene != null)


func _on_ProjectileSpawnTimer_timeout() -> void:
	randomize()
	spawn_location.unit_offset = randf()
	
	var _projectile_instance = projectile_scene.instance()
	_projectile_instance.position = self.spawn_location.position
	get_parent().get_node("Projectiles").add_child(_projectile_instance)
