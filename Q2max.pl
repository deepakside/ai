% CSC/20/22 Deepak Kumar
run:- write('Enter first number : '),read(X),nl,
      write('Enter second number : '),read(Y),nl,
    max(X,Y).

    
max(X,Y):-
	X>Y,M is X,
	write('Maximum Number is: '),write(M).
max(X,Y):-
	Y>X,M is Y,
	write('Maximum Number is: '),write(M).
