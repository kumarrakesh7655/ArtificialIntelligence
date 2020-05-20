rev(X):-rev(X,R),write("reversed list is: "),write(R).
rev(X, R):-rev(X,[],R).
rev([], X, X).
rev([H1|T1], PREV, REV):-rev(T1, [H1|PREV], REV).
/*equals*/
equals([], []):-print("yes").
equals([H1|T1],[H2|T2]):-
(
    H1 = H2
    -> equals(T1, T2)
    ; print("no")
).
