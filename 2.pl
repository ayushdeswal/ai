/* Base case: appending an empty list to L2 gives L2 */
conc([], L2, L2).

/* Recursive case */
conc([H|T], L2, [H|L3]) :-
    conc(T, L2, L3).