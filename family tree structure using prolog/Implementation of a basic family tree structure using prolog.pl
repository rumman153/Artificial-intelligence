male(abdul).
male(rafiq).
male(jabbar).
male(asir).
male(solaiman).
male(shamsu).
male(jamal).
male(karim).
male(humayan).
male(borhan).
male(rumman).
male(mahdi).
male(noor).
male(rahat).
male(himu).
male(niloy).
male(zubaer).
male(mahmud).
male(kamal).
male(noman).
male(sadi).
male(rawad).



female(fatema).
female(afiya).
female(kulsum).
female(sufia).
female(rahima).
female(jarina).
female(sokina).
female(nadira).
female(beauty).
female(jharna).
female(mim).
female(johra).
female(sanjida).
female(ruba).
female(tithy).
female(rishat).
female(riya).



father(abdul,rafiq).
father(abdul,jabbar).
father(rafiq,asir).
father(rafiq,solaiman).
father(jabbar,jarina).
father(asir,borhan).
father(asir,humayan).
father(solaiman,karim).
father(shamsu,jamal).
father(borhan,rumman).
father(borhan,mahdi).
father(humayan,noor).
father(karim,rahat).
father(noor,noman).
father(rahat,mahmud).
father(jamal,himu).
father(himu,niloy).
father(niloy,zubaer).
father(mahmud,kamal).
father(noman,sadi).
father(sadi,rawad).

mother(fatema,rafiq).
mother(fatema,jabbar).
mother(afiya,asir).
mother(afiya,solaiman).
mother(kulsum,jarina).
mother(sufia,borhan).
mother(sufia,humayan).
mother(rahima,karim).
mother(jarina,jamal).
mother(sokina,himu).
mother(nadira,rahat).
mother(beauty,noor).
mother(jharna,rumman).
mother(jharna,mahdi).
mother(mim,noman).
mother(johra,mahmud).
mother(sanjida,niloy).
mother(ruba,zubaer).
mother(tithy,kamal).
mother(rishat,sadi).
mother(riya,rawad).


parent(X,Y):-
    father(X,Y);
    mother(X,Y).

child(X,Y):-
    father(Y,X);
    mother(Y,X).

sibling(X,Y):-
    parent(M,X),
    parent(M,Y).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).

greatgrandparent(X,Y):-
    parent(X,M),
    parent(M,N),
    parent(N,Y).

greatgreatgrandparent(X,Y):-
    parent(X,M),
    parent(M,N),
    parent(N,P),
    parent(P,Y).

greatgreatgreatgrandparent(X,Y):-
    parent(X,M),
    parent(M,N),
    parent(N,P),
    parent(P,Q),
    parent(Q,Y).

greatgreatgreatgreatgrandparent(X,Y):-
    parent(X,M),
    parent(M,N),
    parent(N,P),
    parent(P,Q),
    parent(Q,Z),
    parent(Z,Y).


firstcousin(X,Y):-
    parent(M,X),
    parent(N,Y),
    parent(Z,M),
    parent(Z,N),
    not(M=@=N).

secondcousin(X,Y):-
    parent(M,X),
    parent(N,Y),
    parent(P,M),
    parent(Q,N),
    parent(Z,P),
    parent(Z,Q),
    not(M=@=N),
    not(P=@=Q).

thirdcousin(X,Y):-
    parent(M,X),
    parent(N,Y),
    parent(P,M),
    parent(Q,N),
    parent(R,P),
    parent(S,Q),
    parent(Z,R),
    parent(Z,S),
    not(M=@=N),
    not(P=@=Q).


firstcousinonceremoved(X,Y):-
    parent(M,X),
    parent(Z,M),
    grandparent(N,Y),
    parent(Z,N),
    not(M=@=N).

secondcousinonceremoved(X,Y):-
    grandparent(M,X),
    parent(Z,M),
    greatgrandparent(N,Y),
    parent(Z,N),
    not(M=@=N).

thirdcousinonceremoved(X,Y):-
    greatgrandparent(M,X),
    parent(Z,M),
    greatgreatgrandparent(N,Y),
    parent(Z,N),
    not(M=@=N).


firstcousintwiceremoved(X,Y):-
    parent(M,X),
    parent(Z,M),
    greatgrandparent(N,Y),
    parent(Z,N),
    not(M=@=N).

secondcousintwiceremoved(X,Y):-
    parent(M,X),
    parent(P,M),
    parent(Z,P),
    greatgrandparent(N,Y),
    parent(Q,N),
    parent(Z,Q),
    not(M=@=N),
    not(P=@=Q).

thirdcousintwiceremoved(X,Y):-
    grandparent(M,X),
    parent(P,M),
    parent(Z,P),
    greatgreatgrandparent(N,Y),
    parent(Q,N),
    parent(Z,Q),
    not(M=@=N),
    not(P=@=Q).