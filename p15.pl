evenlength(L1):-
(
    len(L1, R1),
    0 is mod(R1,2)
).
oddlength(L2):-
(
    len(L2, R1),
    1 is mod(R1,2),
    print("true") 
)
