/* Base case */
multi(_, 0, 0).

/* Recursive case */
multi(N1, N2, R) :-
    N2 > 0,
    N3 is N2 - 1,
    multi(N1, N3, R1),
    R is R1 + N1.