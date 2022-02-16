partner(adam,agatha).
partner(betty,ben).
partner(charles,corinda).
partner(david,dawn).
partner(emma,edwardg).
partner(frank,felicity).
partner(george,gwen).



parent(adam,betty).
parent(adam,charles).
parent(betty,david).
parent(charles,emma).
parent(david,frank).
parent(emma,george).
parent(frank,harry).
parent(george,imogen).



/*grandparent(X,Y).*/

grandparent(X,Z):- parent(X,Y), parent(Y,Z).

greatgrandparent(X,Y) :- grandparent(X,Z),parent(Z,Y).

greatgreatgrandparent(X,Y) :- greatgrandparent(X,Z),parent(Z,Y).

/*sibling(X,Y).*/
sibling(X,Y) :- parent(Z,X), parent(Z,Y),X\=Y.

/*first_cousin(X,Y).*/
first_cousin(X,Y) :- grandparent(Z,X),grandparent(Z,Y),X\=Y.

second_cousin(X,Y) :- greatgrandparent(Z,X),greatgrandparent(Z,Y),X\=Y.

/*third_cousin(X,Y).*/
third_cousin(X,Y) :- greatgreatgrandparent(Z,X),greatgreatgrandparent(Z,Y),X\=Y.


first_cousin_once_removed(X,Y) :- greatgrandparent(Z,Y),grandparent(Z,X),not(parent(X,Y)).
    
/*second_cousin_once_removed(X,Y).*/
second_cousin_once_removed(X,Y):- greatgreatgrandparent(Z,Y),greatgrandparent(Z,X),not(parent(X,Y)).

first_cousin_twice_removed(X,Y) :- grandparent(Z,X),greatgreatgrandparent(Z,Y),not(grandparent(X,Y)).
