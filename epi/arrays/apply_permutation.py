def apply_permutation(perm, A):
    for i in range(len(A)):
        # check if the lement at index i has not been moved by chekcing if
        # perm[i] is nonegative
        next = i
        while perm[next] >= 0:
            A[i], A[perm[next]] = A[perm[next]], A[i]
            temp = perm[next]
            # subtracts len(perm) from an entry in perm to make it negative
            # which indicates the corresponding move has been performed
            perm[next] -= len(perm)
            next = temp
        
    # restore perm
    perm[:] = [a + len(perm) for a in perm]


def apply_permutation_cyclic(perm, A):
    def cyclic_permutation(start, perm, A):
        i, temp = start, A[start]
        while True:
            next_i = perm[i]
            next_temp = A[next_i]
            A[next_i] = temp
            i, temp = next_i, next_temp
            if i == start:
                break

    for i in range(len(A)):
        # traverse the cycle to see if i iss the minimum element.
        j = perm[i]
        while j != i:
            if j < i:
                break
            i = perm[i]
        else:
            cyclic_permutation(i, perm, A)