%  CSC/20/22 Deepak Kumar

main:- 
write("Enter number of terms of fibonaci series "),
read(X),
fibo(X).


fibo(X):-
A is 0,
B is 1,
write(A),
write(" "),
write(B),
write(" "),
fibox(X-2,A,B).


fibox(K,A,B):-
K>0,
C is A+B,
write(C),write(" "),
fibox(K-1,B,C).
