/* Concatenation predicate */
conc([], L, L).
conc([H|T], L2, [H|L3]) :-
    conc(T, L2, L3).

/* Reverse predicate */
reverse([], []).                       % Base case
reverse([H|T], R) :-
    reverse(T, RT),                   % Reverse the tail
    conc(RT, [H], R).                 % Append head at the end