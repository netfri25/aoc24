from dataclasses import dataclass
from heapq import heappop, heappush, heapify
from typing import Optional


@dataclass(frozen=True, order=True)
class Pos:
    x: int
    y: int

    def __add__(self, other: "Pos") -> "Pos":
        return Pos(self.x + other.x, self.y + other.y)

    def __str__(self) -> str:
        return f"({self.x}, {self.y})"

    def __repr__(self) -> str:
        return str(self)


DIRS = [
    Pos(1, 0),
    Pos(0, 1),
    Pos(-1, 0),
    Pos(0, -1),
]


@dataclass
class Maze:
    valid_cells: set[Pos]
    start: Pos
    finish: Pos


def parse_input(path: str) -> Maze:
    content = open(path).read()
    maze = Maze(
        {
            Pos(col, row)
            for row, line in enumerate(content.splitlines())
            for col, c in enumerate(line)
            if c == "." or c == "S" or c == "E"
        },
        [
            Pos(col, row)
            for row, line in enumerate(content.splitlines())
            for col, c in enumerate(line)
            if c == "S"
        ][0],
        [
            Pos(col, row)
            for row, line in enumerate(content.splitlines())
            for col, c in enumerate(line)
            if c == "E"
        ][0],
    )
    return maze


def find_lowest_cost(maze: Maze, start: Pos, dir: Pos) -> int:
    visited: set[State] = set()
    scores: dict[State, int] = dict()
    paths: list[tuple[int, Pos, Pos]] = list()
    heapify(paths)

    heappush(paths, (0, start, dir))

    while paths:
        # advance the lowest cost
        cost, pos, dir = heappop(paths)

        # if the path with the lowest cost yet has reached the ending, continue
        if pos == maze.finish:
            return cost

        if pos not in maze.valid_cells:
            continue

        if (pos, dir) in visited:
            continue

        visited.add((pos, dir))

        for new_dir in DIRS:
            # don't go back
            if dir.x == -new_dir.x and dir.y == -new_dir.y:
                continue

            turn_cost = 1001 if dir != new_dir else 1
            new_cost = cost + turn_cost
            next = (pos + new_dir, new_dir)

            if new_cost not in scores or scores[new_cost] > new_cost:
                scores[next] = new_cost
                heappush(paths, (new_cost, next[0], next[1]))

    return 9999999999


State = tuple[Pos, Pos]  # (pos, dir)

def find_paths_with_cost(maze: Maze, target: int) -> set[Pos]:
    visited: set[State] = set()
    valid_positions: set[Pos] = set()
    queue: list[tuple[State, int]] = list()
    heapify(queue)

    heappush(queue, ((maze.start, Pos(1, 0)), 0))

    while queue:
        state, current_cost = heappop(queue)
        pos, dir = state
        valid_positions.add(pos)

        if pos == maze.finish or pos not in maze.valid_cells or state in visited:
            continue

        visited.add(state)

        for new_dir in DIRS:
            # don't go back
            new_pos = pos + new_dir
            turn_cost = 1001 if dir != new_dir else 1
            new_cost = current_cost + turn_cost
            next_state = (new_pos, new_dir)
            if next_state in visited:
                continue

            if new_cost + find_lowest_cost(maze, new_pos, new_dir) > target:
                continue

            heappush(queue, (next_state, new_cost))

    return valid_positions


def part1(maze: Maze) -> int:
    cost = find_lowest_cost(maze, maze.start, Pos(1, 0))
    if cost is None:
        cost = 0
    return cost


def part2(maze: Maze, cost: int) -> int:
    result = find_paths_with_cost(maze, cost)
    print(result)
    return len(result)


def main():
    maze = parse_input("input")
    cost = part1(maze)
    print("part 1:", cost)
    print("part 2:", part2(maze, cost))


if __name__ == "__main__":
    main()
