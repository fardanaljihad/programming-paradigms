parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).
female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).
male(john).
male(jim).
male(dave).

/* Soal 1a */
grandfather(X, Y) :- male(X), parent(X, Z), parent(Z, Y).
/* Soal 1b */
aunt(X, Y) :- female(X), parent(Z, Y), parent(W, Z), parent(W, X).