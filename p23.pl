merge(X, Y):-merge(X, Y, R), write("Merged list is: "),write(R),!.
merge([], X, X).
merge(X, [], X).
merge([H1|T1], [H2|T2], [X|R]):-
(
    H1 < H2
    ->  X is H1,
        merge(T1, [H2|T2], R)
    ;   X is H2,
        merge([H1|T1], T2, R)
).
