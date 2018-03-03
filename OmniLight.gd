extends OmniLight

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

var angle = atan2(self.translation.x, self.translation.z);
var radius = sqrt(self.translation.x * self.translation.x + self.translation.z + self.translation.z);

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	angle += delta * 1.5;
	
	self.translation.x = cos(angle) * radius;
	self.translation.z = sin(angle) * radius;
