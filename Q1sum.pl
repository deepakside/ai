% CSC/20/22 Deepak Kumar
run:- write('Enter first number : '),read(X),nl,
      write('Enter second number : '),read(Y),nl,
    add(X,Y).
add(X,Y):-
    S is X+Y,

    write('Addition is : '),write(S).

