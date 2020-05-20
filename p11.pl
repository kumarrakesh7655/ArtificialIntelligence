conc(X1,X2):-conc(X1,X2,R),write("concatenated list is: "),write(R),!.
conc([], X, X).
conc(X, [], X).
conc([H1|T1], L2, [H1|T3]):- conc(T1, L2, T3).
