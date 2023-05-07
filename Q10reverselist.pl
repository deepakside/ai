% CSC/20/22 Deepak Kumar
reverse_list([], []).
reverse_list([H|T], R) :-
    reverse_list(T, R1),
    append(R1, [H], R).


main:-
    write("Enter List : "),
    read(X),
    reverse_list(X,R),
   write("Reverse List : ") ,write(R).

