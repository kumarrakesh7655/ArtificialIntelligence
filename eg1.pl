likes(mary,choclate).
likes(mary,wine).
likes(john,wine).
likes(john,mary).
sister_of(X,Y) :- female(X),pareents(X,M,F),parents(Y,M,F).