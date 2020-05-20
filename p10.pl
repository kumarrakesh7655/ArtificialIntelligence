memb(M,L):-(
    memb(M,L,R),
    R = 1
    ->  write(M), write(" is a member of list"),!
    ;   write(M), write(" is not a member of list"),!
).
memb(H, [H|_], 1).
memb(X, [H|T], R):- 
(
    X = H
    ->R is 1
    ;   (
            memb(X, T, R1),
            R is R1
        )
).


len(L):-len(L,R),write("Length of list is: "),write(R).
len([], 0).
len([_|T], R):- 
(
    len(T, R1),
    R is R1 + 1
).

append(X, L):-conc([X],L,R), print(R).
