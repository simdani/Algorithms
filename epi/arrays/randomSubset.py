import random

def random_subset(n, k):
    change_elements = {}
    for i in range(k):
        # Generate a random index between i and n - 1, inclusive
        rand_idx = random.randrange(i, n)
        rand_idx_mapped = change_elements.get(rand_idx, rand_idx)
        i_mapped = change_elements.get(i, i)
        change_elements[rand_idx] = i_mapped
        change_elements[i] =rand_idx_mapped
    return [change_elements[i] for i in range(k)]

if __name__ == "__main__":
    print(random_subset(4, 3))
