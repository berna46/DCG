exp(sub(A,B)) --> term(A), [-], exp(B).
exp(add(A,B)) --> term(A), [+], exp(B).
exp(A) --> term(A).


term(mul(A,B)) --> fact(A), [*], term(B).
term(div(A,B)) --> fact(A), [/], term(B).
term(A) --> fact(A).

fact(minus(A)) --> [-],atm(A).
fact(minus(A)) --> [-], ['('], exp(A), [')'].
fact(A) --> ['('], exp(A), [')'].
fact(A) --> atm(A).

atm(A) --> [A], {atom(A)}.
