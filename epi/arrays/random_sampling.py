import random

def random_sampling(k, A):
    for i in range(k):
        # generate a random index in  [i, len(A) - 1]
        r = random.randint(i, len(A) - 1)
        A[i], A[r] = A[r], A[i]