def solution(a,b):
    a.sort()
    b.sort(reverse=True)
    answer = sum(A*B for A,B in zip(a,b))
    return answer