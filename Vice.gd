extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tile_size = Vector2(16, 16)

var world_map = """
#..............................#
#.......#####.#.....#####......#
################################
#.......#...#.#.....#..........#
#.......#...#.#.....#..........#
#.......#####.#####.#####......#
#..............................#
#.....#####.#####.#####..##....#
#.........#.#...#.....#.#.#....#
#.....#####.#...#.#####...#....#
#.....#.....#...#.#.......#....#
#.....#####.#####.#####.#####..#
#..............................#
#..............................#
#..#.#..........#....#.........#
#..#.#..........#....#.........#
#..#.#.......#####.#######.....#
#..#.#..........#....#.........#
#..#.#.............###.#.#.....#
#..#.##########................#
#..#..........#....#.#.#.#.....#
#..#.####.###.#................#
#..#.#......#.#................#
#..#.#.####.#.#....###..###....#
#..#.#......#.#....#......#....#
#..#.########.#....#......#....#
#..#..........#....#......#....#
#..############....#......#....#
#..................########....#
#..............................#
#..............................#
################################
""".replace("\n", "").strip_edges()

# Called when the node enters the scene tree for the first time.
func _ready():
	print("=======================================================")
	print(world_map)
	print("=======================================================")

func _input(ev):
	if ev.is_action_pressed("ui_cancel"):
		get_tree().quit()


func _draw():
		# for (vTile.y = vTL.y; vTile.y < vBR.y; vTile.y++)
		# 	for (vTile.x = vTL.x; vTile.x < vBR.x; vTile.x++)
		# 	{
		# 		if (sWorldMap[vTile.y * vWorldSize.x + vTile.x] == '#')
		# 		{
		# 			tv.DrawRect(vTile, { 1.0f, 1.0f }, olc::WHITE);
		# 			tv.DrawLine(vTile, vTile + olc::vf2d(1.0f, 1.0f), olc::WHITE);
		# 			tv.DrawLine(vTile + olc::vf2d(0.0f, 1.0f), vTile + olc::vf2d(1.0f, 0.0f), olc::WHITE);
		# 		}
		# 	}
	for i in range(0, 32):
		for j in range(0, 32):
			var pos = Vector2(i * tile_size.x, j * tile_size.y)
			draw_rect(Rect2(pos, tile_size), Color.white, false, 1)	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
