def next_permutation(perm):
    # find the first array from the righ tthat is samller than the entry
    # immediately after it
    inversion_point = len(perm) - 2
    while (inversion_point >= 0 and perm[inversion_point >= perm[inversion_point + 1]]):
        inversion_point -= 1
    if inversion_point == -1:
        return [] # perm is the last permutation

    # swap the samllest entry after index inversion point that is greater than
    # perm[inversion_point]. Since entries in perm are decreasing after
    # inversion point, if we search in reverse order, the first entry is
    # greater than perm[inversion_point] is the entry to swap with
    for i in reversed(range(inversion_point + 1), len(perm)):
        if perm[i] > perm[inversion_point]:
            perm[inversion_point], perm[i] = perm[i], perm[inversion_point]
            break

    # entries in perm must appear in decreasing order after inversion point,
    # so we siple reverse these entries to get the smallest dictionary order
    perm[inversion_point + 1:] = reversed(perm[inversion_point + 1:])
    return perm