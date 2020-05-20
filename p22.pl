delete_all(X, L):-delete_all(X,L,R),write("List without element "), write(X),write(" is: "),write(R),!.
delete_all(_, [], []).
delete_all(X, [X|T], L):-delete_all(X, T, L).
delete_all(X, [H|T], [H|T1]):-delete_all(X, T, T1).
