%  CSC/20/22 Deepak Kumar
factorial(N, F) :-
    (   N = 0 ->
        F = 1
    ;   N > 0 ->
        N1 is N - 1,
        factorial(N1, F1),
        F is N * F1
    ).

main :-
    write('Enter a number: '),
    read(N),
    factorial(N, F),
    format('The factorial of ~w is ~w.~n', [N, F]).
