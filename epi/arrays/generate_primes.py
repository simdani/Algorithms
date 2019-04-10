# Given n, return all primes up to and including N
def generate_primes(n):
    primes = []
    # is_prime[p] represents if p is prime or not. Inititaly, set each to
    # true, expecting 0 and 1. Then ues sieving to elimnate nonprimes.
    is_prime = [False, False] + [True] * (n - 1)
    for p in range(2, n + 1):
        if is_prime[p]:
            primes.append(p)
            for i in range(p, n + 1, p):
                is_prime[i] = False 
    return primes