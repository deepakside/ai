% CSC/20/22 Deepak Kumar
check([H|T],[X|Y]):-H=:=X,check(T,Y).
check([_H|_T],[_X|_Y]):-write("Not a Plaindrome").
check([],[]):-write("Palindrome").
ques11:-
    write("Enter the list for palindrome :"),
    read([H|T]),
    reverse([H|T],[X|Y]),check([H|T],[X|Y]).

