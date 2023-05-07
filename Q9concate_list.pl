% CSC/20/22 Deepak Kumar
concat([], L, L).
concat([H|T], L, [H|L1]) :-
    concat(T, L, L1).

main:-
    write("Enter the first list : "),
    read(X),
    write("Enter Second List : "),
    read(Y),
    concat(X,Y,L),
    write("Concat List : "),write(L).

