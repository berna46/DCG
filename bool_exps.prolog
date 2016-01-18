
exp(or(A,B)) --> term(A), [+], exp(B).
exp(A) --> term(A).

term(and(A,B)) --> fact(A), [*], term(B).
term(A) --> fact(A).
    
fact(nott(A)) --> [-], atm(A).
fact(nott(A)) --> [-], ['('], exp(A), [')'].
fact(A) --> atm(A).
fact(A) -->  ['('], exp(A), [')'].


atm(A) --> [A], {atom(A)}.
