towe_of_hanoi(X):-
(
    X < 0
    ->  print("Xot defined")
    ;   power(2, X, R),
        R1 is R - 1,
        write("Xo of steps: "),write(R1),nl,
        towe_of_hanoi(X, "a","b","c")
).
towe_of_hanoi(1, A,_,C):-write("Move from "),write(A),write(" to "),write(C),nl.
towe_of_hanoi(X, A, B, C):-
(
    X1 is X-1,
    towe_of_hanoi(X1, A,C,B),
    write("Move from "),write(A),write(" to "),write(C),nl,
    towe_of_hanoi(X1, B,A,C)
).
