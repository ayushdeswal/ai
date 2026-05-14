/* Base case */
evenlength([]).

/* If we remove one element from an even list → odd list */
evenlength([_|T]) :-
    oddlength(T).

/* If we remove one element from an odd list → even list */
oddlength([_|T]) :-
    evenlength(T).