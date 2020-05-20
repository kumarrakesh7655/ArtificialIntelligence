likes(rakesh,X) :- likes(X,food),likes(X,wine).   % rakesh likes anyone whoe likes food and wine.
likes(rakesh,X) :- female(X),likes(X,Food). % rakesh likes any female who likes wine.
male(rakesh).
male(father).
female(mother).
female(shobha).
parents(rakesh,mother,father).
parents(shobha,mother,father).
sister_of(X,Y) :- female(X),parents(X,mother,father),parents(Y,mother,father).
brother_of(X,Y) :- male(X),parents(X,mother,father),parents(Y,mother,father).
 steal(P,T) :-theif(P),likes(P,T).             %a person may steal something if it likes the thing and is a  theif. 