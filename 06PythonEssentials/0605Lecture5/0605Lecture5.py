import sys
import time

map = [
    [1, 1, 1, 2, 1, 1, 1, 1, 1, 1],
    [1, 1, 0, 0, 0, 0, 0, 0, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 0, 1, 1],
    [1, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    [1, 0, 1, 1, 1, 0, 1, 1, 1, 1],
    [1, 0, 0, 1, 1, 0, 0, 1, 1, 1],
    [1, 1, 0, 1, 1, 1, 0, 0, 1, 1],
    [1, 1, 0, 0, 0, 1, 0, 0, 1, 1],
    [1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 2, 1, 1, 1, 1, 1]
]

def showMap():
    for row in map:
        for path in row:
            print(path, end="")
        print()

def action(x, y):
    if map[y][x] == 2:
        print("FINISHED!")
        showMap()
        sys.exit()
    if map[y][x] == 0:
        map[y][x] = '*'
        # time.sleep(1)
        AI(x, y)

def AI(x, y):    
    # Case 1 "X priority" - from Bottom to Top AI(3, 5)
    action(x + 1, y)
    action(x - 1, y)
    action(x, y + 1)
    action(x, y - 1)
    # Case 2 "Y priority" - From Top to Bottom AI(3, 5)
    # action(x, y + 1)
    # action(x, y - 1)
    # action(x + 1, y)
    # action(x - 1, y)

AI(3, 5)

