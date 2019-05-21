# Check if a partialy filled matrix has nay conflicts.
def is_valid_sudoku(partial_assignment):
    # Return true if subarray
    # partial_assignments[start_row:end_row][start_col:end_col] contains any
    # duplicats in [1, 2, ..., len(partial_assignments)]; otherwise return 
    # False
    def has_duplicate(block):
        block = list(filter(lambda x: x != 0, block))
        return len(block) != len(set(block))

    n = len(partial_assignment)
    # check row and column constraints
    if any(
            has_duplicate([partial_assignment[i][j] for j in range(n)])
            or has_duplicate([partial_assignment[j][i] for j in range(n)])
            for i in range(n)):
        return False
    
     # Check region constraints
     region_size = int(math.sqrt(n))
     return all(not has_duplicate([
         partial_assignment[a][b]
         for a in range(region_size * I, region_size * (I + 1))
         for b in range(region_size * J, region_size * (J + 1))
         ]) for I in range(region_size) for J in range(region_size))

# pythonic solution
def is_valid_sudoku_pythonic(partial_assignment):
    region_size = int(math.sqrt(len(partial_assignment)))
    return max(
        collections.Counter(k
                            for i, row in enumerate(partial_assignment)
                            for j, c in enumerate(row)
                            if c != 0
                            for k in ((i, str(c)), (str(c), j),
            (i / region_size, j / region_size, str(c)))).values(),
        default = 0) <= 1

