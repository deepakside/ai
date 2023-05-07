% CSC/20/22 Deepak Kumar
show([_H|T]):- write("List is : "),write(T),nl.
merge([H|T],[X|Y],[H1|T1]):-H>X,append([H1|T1],[X],R),merge([H|T],Y,R).
merge([H|T],[X|Y],[H1|T1]):-X>H,append([H1|T1],[H],R),merge(T,[X|Y],R).
merge([H|T],[X|Y],[]):-H>X,R is [X],merge([H|T],Y,R).
merge([H|T],[X|Y],[]):-X>H,R is [H],merge(T,[X|Y],R).
merge([],[X|Y],[H1|T1]):- append([H1|T1],[X|Y],R),show(R).
merge([X|Y],[],[H1|T1]):- append([H1|T1],[X|Y],R),show(R).
ques18:- write("Enter List 1 : "),read(L1),nl,write("Enter List 2 : "),read(L2),nl,merge(L1,L2,_Temp),nl.