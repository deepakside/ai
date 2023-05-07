% CSC/20/22 Deepak Kumar
list([1,2,3,4,5,6,7,8,9,10]).
check(X):-list(L),member(X,L).
ques8:-
write("Enter Number to check in Given List (1,2,3,4,5,6,7,8,9,10) :-  "),read(A),check(A),nl.

