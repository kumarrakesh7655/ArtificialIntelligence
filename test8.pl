toh(N):-
(
    N < 0
    ->  print("Not defined")
    ;   power(2, N, R),
        R1 is R - 1,
        write("No of steps: "),write(R1),nl,
        toh(N, "a","b","c")
).
toh(1, A,_,C):-write("Move from "),write(A),write(" to "),write(C),nl.
toh(N, A, B, C):-
(
    N1 is N-1,
    toh(N1, A,C,B),
    write("Move from "),write(A),write(" to "),write(C),nl,
    toh(N1, B,A,C)
).
