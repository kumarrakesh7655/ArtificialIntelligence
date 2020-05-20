fib(X):-fib(X, A), print(A),!.
fib(1,1).
fib(2,1).
fib(X,T):-
(
    X > 0
    ->(
        X1 is X-1,
        X2 is X-2,
        fib(X1, T1),
        fib(X2, T2),
        T is T1 + T2  
        )
    ; print("Not Defined"),!
).
