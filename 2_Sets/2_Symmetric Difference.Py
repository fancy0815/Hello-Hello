M = int(input())
Set_M = set(map(int,input().split()))
N = int(input())
Set_N = set(map(int,input().split()))

List_diff = list(Set_M.difference(Set_N).union(Set_N.difference(Set_M)))
# List_diff = list(Set_M.difference(Set_N) - Set_N.difference(Set_M))
List_diff.sort()
print("\n".join(map(str,List_diff)))
