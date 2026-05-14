/* ---------- FACTS ---------- */

/* Gender */
male(john).
male(paul).
male(mike).
male(david).
male(chris).

female(mary).
female(lisa).
female(susan).
female(anna).
female(kate).

/* Parent relationships */
parent(john, paul).
parent(mary, paul).

parent(john, lisa).
parent(mary, lisa).

parent(paul, david).
parent(susan, david).

parent(paul, anna).
parent(susan, anna).

parent(lisa, chris).
parent(mike, chris).

parent(lisa, kate).
parent(mike, kate).


/* ---------- RULES ---------- */

/* Basic relationships */
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

child(X, Y) :- parent(Y, X).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).

/* Siblings */
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    sibling(X, Y).

sister(X, Y) :-
    female(X),
    sibling(X, Y).

/* Grandparents */
grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).

grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

/* Uncle & Aunt */
uncle(X, Y) :-
    male(X),
    sibling(X, Z),
    parent(Z, Y).

aunt(X, Y) :-
    female(X),
    sibling(X, Z),
    parent(Z, Y).

/* Cousins */
cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B),
    X \= Y.