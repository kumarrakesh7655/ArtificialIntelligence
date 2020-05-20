maxlist([H|T]):-maxlist(T, H).
maxlist([H|[]], M):-
(
    M > H
    -> print(M),!
    ; print(H),!
).
maxlist([H|T], M):-
(
    M > H
    ->maxlist(T, M)
    ; maxlist(T, H)    
).
