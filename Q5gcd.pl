% CSC/20/22 Deepak Kumar
gcd(0,_X):-write("GCD is 0").
gcd(_X,0):-write("GCD is 0").
gcd(1,_X):-write("GCD is 1").
gcd(_X,1):-write("GCD is 1").
gcd(A,B):-startnow(A,B,2).
confirm(0,0,_A,_B,C):-write(C).
confirm(_X,_Y,A,B,C):- C<A,S is C+1,startnow(A,B,S).
startnow(A,B,C):-X is A mod C,Y is B mod C,confirm(X,Y,A,B,C).
ques5:-
     write("Enter 1st number(Smaller) :- "),read(A),nl,
     write("Enter 2nd number(Bigger) :- "),read(B),nl,
     write("GCD is  :- "),gcd(A,B),nl.
