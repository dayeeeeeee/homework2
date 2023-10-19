def solution(s):
    s = s.split(" ")
    for x in range(len(s)):
        s[x] = s[x].capitalize()
        answer= ' '.join(s)
    return answer