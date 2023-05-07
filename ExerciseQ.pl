/*Name - Deepak Kumar
Roll No- CSC-20-22
univRollNo- 20059570016*/

female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).
male(rishu).

parent(pam,bob).
parent(tom,bob).
parent(tom,rishu).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

offspring(X,Y):-
parent(Y,X).

father(X,Y):-
male(X),
parent(X,Y).

mother(X,Y):-
female(X),
parent(X,Y).

grandfather(X,Y):-
male(X),
parent(X,Z),
parent(Z,Y).

grandmother(X,Y):-
female(X),
parent(X,Z),
parent(Z,Y).

sister(X,Y):-
female(X),
parent(K,X),
parent(K,Y),
X\=Y.

brother(X,Y):-
male(X),
parent(K,X),
parent(K,Y),
X\=Y.

uncle(X,Y):-
male(X),
brother(X,Z),father(Z,Y),
male(Z).

grandparent(X,Y):-
parent(X,Z),
parent(Z,Y).

predecessor(X,Z):-
parent(X,Z).

predecessor(X,Z):-
parent(X,Y),
predecessor(Y,Z).
