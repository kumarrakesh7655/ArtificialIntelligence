nth_element(N, L):-nth_element(N, L, X),write("element at pos "),write(N),write(" is: "),write(X),!.
nth_element(_, [], _):-print("out of bounds"),!.
nth_element(N, [H|T], X):-
(
    N > 0
    ->  (
            N = 1
            ->X is H
            ;   (
                    N1 is N - 1,
                    nth_element(N1, T, X)
                )
        )
    ; print("Invalid index")
).
