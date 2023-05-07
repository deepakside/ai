% CSC/20/22 Deepak Kumar
len([],0).
len([_H|T],A):-len(T,A1),A is A1+1.

evenlength([H|T]):-len([H|T],L),S is L mod 2,checkeven(S).

checkeven(X):- X=:=0,write("List is even").


oddlength([H|T]):-len([H|T],L),S is L mod 2,checkodd(S).

checkodd(X):- X=:=1,write("It is odd").



ques13:-
    write("Enter List :"),
    read([H|T]),
    evenlength([H|T]),
    write(' \n '),
    oddlength([H|T]).
