/* Base case: only one element */
maxlist([X], X).

/* Recursive case */
maxlist([H|T], M) :-
    maxlist(T, M1),
    ( H > M1 -> M = H ; M = M1 ).