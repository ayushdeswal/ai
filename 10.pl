/* Base case: X is the head of the list */
memb(X, [X|_]).

/* Recursive case: check in the tail */
memb(X, [_|T]) :-
    memb(X, T).