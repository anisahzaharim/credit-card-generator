%*****************************
%****------------------*******
%****    16 Digits     *******
%**** Credit Card Number *****
%****     Generator     ******
%****------------------*******
%*****************************
gen_cc_num(Credit_Card_Number) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Credit_Card_Number).

gen_cc_num([A,B,C,D,E|_],Card) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Card).

gen_cc_num([A,B,C,D|_],Card) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Card).

gen_cc_num([A,B,C|_],Card) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Card).

gen_cc_num([A,B|_],Card) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Card).

gen_cc_num([A|_],Card) :-
    credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit),
    atomic_list_concat([A,B,C,D,' ',E,F,G,H,' ',I,J,K,L,' ',M,N,O,Check_Digit],Card).

credit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,Check_Digit) :-

    %Odd numbers, each need to be multiply by 2.
    calc(A,A,A1),
    calc(C,C,C1),
    calc(E,E,E1),
    calc(G,G,G1),
    calc(I,I,I1),
    calc(K,K,K1),
    calc(M,M,M1),
    calc(O,O,O1),

    Odd is A1 +C1 + E1 + G1 + I1 + K1 + M1 + O1,
    
    %Even numbers
    calc(B,D,BD),
    calc(F,H,FH),
    calc(J,L,JL),
    calc(N,0,N),
    
    Even is BD + FH + JL + N,

    (( Zero is mod(Odd+Even,10),
       Zero =:= 0,
       Check_Digit is 0) ;

    ( NonZero is mod(Odd+Even,10),
       NonZero =\= 0,
       Check_Digit is (10-mod(Odd+Even,10)))).

calc(A,B,Z) :- pair(A,B),
               A+B < 10,
               Z is A+B.

calc(A,B,Z) :- pairGrt10(A,B),
               A+B >= 10,
               Z is (1+mod(A+B,10)).

pair(1,0).
pair(1,1).
pair(1,2).
pair(1,3).
pair(1,4).
pair(1,5).
pair(1,6).
pair(1,7).
pair(1,8).
pair(2,0).
pair(2,1).
pair(2,2).
pair(2,3).
pair(2,4).
pair(2,5).
pair(2,6).
pair(2,7).
pair(3,0).
pair(3,1).
pair(3,2).
pair(3,3).
pair(3,4).
pair(3,5).
pair(3,6).
pair(4,0).
pair(4,1).
pair(4,2).
pair(4,3).
pair(4,4).
pair(4,5).
pair(5,0).
pair(5,1).
pair(5,2).
pair(5,3).
pair(5,5).
pair(6,0).
pair(6,1).
pair(6,2).
pair(6,3).
pair(7,0).
pair(7,1).
pair(7,2).
pair(8,0).
pair(8,1).
pair(9,0).
           
pairGrt10(1,9).
pairGrt10(2,8).
pairGrt10(2,9).
pairGrt10(3,7).
pairGrt10(3,8).
pairGrt10(3,9).
pairGrt10(4,6).
pairGrt10(4,7).
pairGrt10(4,8).
pairGrt10(4,9).
pairGrt10(5,5).
pairGrt10(5,6).
pairGrt10(5,7).
pairGrt10(5,8).
pairGrt10(5,9).
pairGrt10(6,4).
pairGrt10(6,5).
pairGrt10(6,6).
pairGrt10(6,7).
pairGrt10(6,8).
pairGrt10(6,9).
pairGrt10(7,3).
pairGrt10(7,4).
pairGrt10(7,5).
pairGrt10(7,6).
pairGrt10(7,7).
pairGrt10(7,8).
pairGrt10(7,9).
pairGrt10(8,2).
pairGrt10(8,3).
pairGrt10(8,4).
pairGrt10(8,5).
pairGrt10(8,6).
pairGrt10(8,7).
pairGrt10(8,8).
pairGrt10(8,9).
pairGrt10(9,1).
pairGrt10(9,2).
pairGrt10(9,3).
pairGrt10(9,4).
pairGrt10(9,5).
pairGrt10(9,6).
pairGrt10(9,7).
pairGrt10(9,8).
pairGrt10(9,9).
