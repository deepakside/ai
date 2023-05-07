% CSC/20/22 Deepak Kumar
show([H|T]):- nl,write("List is :- "),write([H|T]).
insert_nth(I,_N,[]):-write("List is Empty, Inserting in Begining."),show([I]).
insert_nth(I,N,[H|T]):- N=:=1,append([I],[H|T],R),show(R).
insert_nth(I,N,[H|T]):- insert_nth(I,N,T,2,[H]).
insert_nth(I,N,[H|T],C,[H1|T1]):- C=:=N,append([H1|T1],[I],R),append(R,[H|T],V),write("Successfully inserted"),show(V).
insert_nth(I,N,[H|T],C,[H1|T1]):- C<N,S is C+1,append([H1|T1],[H],V),insert_nth(I,N,T,S,V).
insert_nth(I,_N,[],_C,[H1|T1]):- append([H1|T1],[I],R),write("Successfully inserted"),show(R).

ques16:-  write("Enter Position :- "),read(P),nl,write("Enter Number :- "),read(N),nl,write("Enter List :- "),read(L),nl,insert_nth(N,P,L),nl.
