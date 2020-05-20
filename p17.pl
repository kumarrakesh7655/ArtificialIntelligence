remove_dup(L1):-remove_dup(L1, R),write("L1ist after removing duplicates is: "),write(R),!.
remove_dup([], []).
remove_dup([H|T], [H|R]):-
(
    delete_all(H, T, R1),
    remove_dup(R1, R)
).
