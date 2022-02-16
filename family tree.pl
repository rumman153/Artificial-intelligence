parent(philip, charles).
parent(elizabeth, charles).

parent(charles, william).
parent(diana, william).
parent(charles, harry).
parent(diana, harry).

parent(william, george).
parent(kate, george).
parent(william, charlotte).
parent(kate, charlotte).
parent(william, louis).
parent(kate, louis).

male(philip).
male(charles).
male(william).
male(harry).
male(george).
male(louis).

female(elizabeth).
female(diana).
female(kate).
female(charlotte).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
son(X, Y) :- parent(X, Y), male(Y).
daughter(X, Y) :- parent(X, Y), female(Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X,Y), male(X).
grandmother(X, Y) :- grandparent(X,Y), female(X).

sibling(X,Y) :- father(Z,X) , father(Z,Y), X\=Y.
brother(X,Y) :- sibling(X,Y) , male(X).
sister(X,Y) :- sibling(X,Y) , female(X).

uncle(X, Y) :- sibling(X,Z),parent(Z, Y),male(X).
aunt(X, Y) :- sibling(X,Z),parent(Z, Y),female(X).

nephew(X, Y) :- sibling(Y,Z),parent(Z,X),male(X).
niece(X, Y) :- sibling(Y,Z),parent(Z,X),female(X).

greatgrandparent(X, Y) :- parent(X, Z), grandparent(Z, Y).
greatgrandfather(X, Y) :- greatgrandparent(X, Y),male(X).
greatgrandmother(X, Y) :- greatgrandparent(X, Y),female(X).



