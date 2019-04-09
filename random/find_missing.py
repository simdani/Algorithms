"""
Find missing element, input (2 arrays) output: missing element
 [4, 12, 9, 6, 2]
 [4, 9, 12, 2]

 result => 6
"""

def find_missing_xor(full_items, partial_items):
    xor_sum = 0
    for num in full_items:
        xor_sum ^= num
    for num in partial_items:
        xor_sum ^= num

    return xor_sum

def find_missing(full_items, partial_items):
    missing_items = set(full_items) - set(partial_items)
    assert(len(missing_items) == 1)
    return list(missing_items)[0]

def reverse(x):
    output_len = len(x)
    output = [None] * output_len
    output_index = output_len - 1
    for element in x:
        output[output_index] = element
        output_index -= 1
    
    return ''.join(output)

if __name__ == "__main__":
    print(find_missing_xor([4, 12, 9, 6, 2], [4, 9, 12, 2]))
    # print(find_missing([4, 12, 9, 6, 2], [4, 9, 12, 2]))