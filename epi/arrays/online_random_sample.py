import itertools
import random
def online_random_sample(it, k):
    # stores the first k elements
    sampling_results = list(itertools.islice(it, k))

    # Have read the first k elements
    num_seen_so_far = k
    for x in it:
        num_seen_so_far += 1
        # generate a random number in [0, num_seen_so_far - 1], and if this
        # number is in [0, k - 1], we replace that element from the sample with
        # x
        idx_to_replace = random.randrange(num_seen_so_far)
        if idx_to_replace < k:
            sampling_results[idx_to_replace] = x
    return sampling_results