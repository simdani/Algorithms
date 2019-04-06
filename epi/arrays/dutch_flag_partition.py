RED, WHITE, BLUE = range(3)

def dutch_flag_partition(pivot_index, A):
    pivot = A[pivot_index]
    # first pass: group elements smaller than pivot
    for i in range(len(A)):
        # look for smaller elements
        for j in range(i + 1, len(A)):
            if A[j] < pivot:
                A[i], A[j] = A[j], A[i]
                break
    
    # second pass, group elements larger than pivot
    for i in reversed(range(len(A))):
        if A[i] < pivot:
            break
        # Look for largeer elment. Sop when we reac an element less than
        # pivot, since ifrst pass has moved them to the start of A
        for j in reversed(range(i)):
            if A[j] > pivot:
                A[i], A[j] = A[j], A[i]
                break

def dutch_flag_partition_improved(pivot_index, A):
    pivot = A[pivot_index]
    # first pass: group elements smaller than pivot
    smaller = 0
    for i in range(len(A)):
        if A[i] < pivot:
            A[i], A[smaller] = A[smaller], A[i]
            smaller += 1
    
    # second pass: gorup elements larger than pivot
    larger = len(A) - 1
    for i in reversed(range(len(A))):
        if A[i] < pivot:
            break
        elif A[i] > pivot:
            A[i], A[larger] = A[larger], A[i]
            larger -= 1


def dutch_flag_partition_improved_classification(pivot_index, A):
    pivot = A[pivot_index]
    smaller, equal, larger = 0, 0, len(A)
    
    # keep iterating as long as there is an unclassified element.
    while equal < larger:
        # A[equal] is th eincoming unclassified element.
        if A[equal] < pivot:
            A[smaller], A[equal] = A[equal], A[smaller]
            smaller, equal = smaller + 1, equal + 1
        elif A[equal] == pivot:
            equal += 1
        else:
            larger -= 1
            A[equal], A[larger] = A[larger], A[equal]