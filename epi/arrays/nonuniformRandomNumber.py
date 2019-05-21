import itertools
import bisect
import random

def nonuniform_random_number_genration(values, probabilities):
    prefix_num_of_probabilitie = list(itertools.accumulate(probabilities))
    interval_idx = bisect.bisect(prefix_num_of_probabilitie, random.random())
    return values[interval_idx]

if __name__ == "__main__":
    print(nonuniform_random_number_genration([1, 2, 3, 4], [0.5, 0.1, 0.2, 0.2]))
