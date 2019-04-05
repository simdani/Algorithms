def parity(x):
    result = 0
    while x:
        result ^= x & 1
        x >>= 1
    return result

# drop the lowest bit
def parity_drop_lowest_bit(x):
    result = 0
    while x:
        result ^= 1
        x &= x - 1
    return result

if __name__ == "__main__":
    print(parity(1011))