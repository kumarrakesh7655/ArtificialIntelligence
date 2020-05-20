delete_nth(P, L):-delete_nth(P, L,R), print(R),!.
delete_nth(1, [_|T], T).
delete_nth(P, [H|T], [H|T1]):-
(
    P1 is P - 1,
    delete_nth(P1, T, T1)
).
