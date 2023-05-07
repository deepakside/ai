% CSC/20/22 Deepak Kumar
sumlist([H|T],S):- C is H+S,sumlist(T,C).
sumlist([],S):- write("Sum of List is :-"),write(S),nl.
sumlist([H|T]):- S is H,nl,sumlist(T,S).

ques12:-
    write("Enter the list :"),
    read([H|T]),
    write("Sum of numbers of list :"),sumlist([H|T]).
