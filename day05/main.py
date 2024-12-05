Update = list[int]
Mappings = dict[int, set[int]]


def parse_input(input: str) -> tuple[Mappings, list[Update]]:
    mappings: dict[int, set[int]] = {}
    while input[0] != "\n":
        before, after = int(input[:2]), int(input[3:5])
        input = input[6:]

        if after not in mappings:
            mappings[after] = set()
        mappings[after].add(before)

    input = input[1:]
    updates = list(
        map(
            lambda line: list(map(int, line.split(","))),
            input.strip().split(),
        )
    )
    return mappings, updates


def make_correct(update: list[int], mappings: Mappings):
    update_index = 0
    while update_index < len(update):
        page = update[update_index]
        if page not in mappings:
            update_index += 1
            continue
        not_after = mappings[page]

        for to_search in not_after:
            try:
                search = update.index(to_search, update_index)
            except ValueError:
                continue

            temp = update[update_index]
            update[update_index] = update[search]
            update[search] = temp
            break
        else:
            update_index += 1


with open("example") as f:
    mappings, updates = parse_input(f.read())
    for update in updates:
        print(update)
        make_correct(update, mappings)
        print(update)
        print()
