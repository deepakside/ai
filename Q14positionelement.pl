% CSC/20/22 Deepak Kumar
show(N,H):-nl,write("Element at Position "),write(N),write(" in List :-"),write(H).
nth_element(N,[H|T]):- nth_element(N,[H|T],1).
nth_element(N,[H|_T],C):- N=:=C,show(N,H).
nth_element(N,[_H|T],C):- C<N,S is C+1,nth_element(N,T,S).



ques14:-
    write("Enter the list : "),
    read([H|T]),
    write("Enter the positon :"),
    read(N),
    nth_element(N,[H|T]).
