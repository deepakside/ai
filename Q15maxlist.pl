% CSC/20/22 Deepak Kumar
max([H|T],M):- H>M,max(T,H).
max([H|T],M):- H<M,max(T,M).
max([],M):- M>=0,write("Greatest number is :- "),write(M),nl.
maxList([]):-write("List can't be Empty").
maxList([H|T]):- M is H,max(T,M),nl.


ques15:-
    write("Enter the list :"),
    read([H|T]),
    maxList([H|T]).
