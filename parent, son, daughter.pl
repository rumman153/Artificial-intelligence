parent(john, bob).
parent(john, sarah).
parent(mary, bob).
parent(mary, sarah).
male(john).
male(bob).
female(mary).
female(sarah).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

son(X, Y) :- parent(X, Y), male(Y).
daughter(X, Y) :- parent(X, Y), female(Y).