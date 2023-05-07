% CSC/20/22 Deepak Kumar
% showing list
show([_H|T]):- nl,write("List is :- "),write(T).
% calculating length of list 
len([],0).
len([_H|T],A):-len(T,A1),A is A1+1.
    removelast([H|T]):- reverse([H|T],[_H1|T1]),reverse(T1,[_X|Y]),write("List is :- "),write(Y).
delete_nth(_N,[]):-write(" Nothing to Delete : List is Empty (UnderFlow).").
delete_nth(N,[H|T]):- len([H|T],L),delete_nth(N,[H|T],1,[_],L).
delete_nth(N,[_H|T],C,[H1|T1],_L):- C=:=N,append([H1|T1],T,V),write("Successfully Deleted"),show(V).
delete_nth(N,[H|T],C,[H1|T1],L):- C<N,S is C+1,append([H1|T1],[H],V),delete_nth(N,T,S,V,L).
delete_nth(N,[H|T],_C,[_H1|_T1],L):- N=:=L,removelast([H|T]).
ques17:- write("Enter Index to be Deleted :- "),read(P),nl,write("Enter List :- "),read(L),nl,delete_nth(P,L).
