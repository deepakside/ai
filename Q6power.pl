% CSC/20/22 Deepak Kumar

calc_power(A,B):- Z is A^B,write(Z),nl.

ques6:- 
  write('Enter Base Value :- '),read(Num),nl,
  write('Enter Power Value :- '),read(Pow),nl,  
  write('Resultant Value :- '),calc_power(Num,Pow),nl.
