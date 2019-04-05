def swap_bits(x, i, j):
    # extract the i-th and j-th bits, and see if they differ
    if (x >> i) & 1 != (x >> j) & 1:
        # i-th and j-th bits differ. We will swar them bu flipping their values
        # select the bits to flip with bit_mask. since x^1 = 0 when x = 1 and 1
        # when x = 0, we can perform the flip XOR
        bit_mask = (1 << i) | (1 << j)
        x ^= bit_mask
    return x