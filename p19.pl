insert_nth(X, P, L):-insert_nth(X, P, L, R),print(R),!.
insert_nth(X, 1, Y, [X|Y]).
insert_nth(X, P, [H|T], [H|T1]):-
(
    P1 is P - 1,
    insert_nth(X, P1, T, T1)
).
