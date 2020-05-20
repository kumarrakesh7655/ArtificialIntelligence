list_sum(L1):-list_sum(L1,S),write("sum of list is: "),write(S).
list_sum([], 0).
list_sum([H|T], R):-
(
    list_sum(T, R1),
    R is H + R1
).    

