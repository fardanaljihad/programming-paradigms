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
married(M, F) :- male(M), female(F), parent(M, C), parent(F, C).
aunt(A, X) :- 
    ( female(A), 
      parent(G, A), 
      grandfather(G, X), 
      not(parent(A, X));
      female(A),
      married(M, A),
      parent(G, M),
      not(parent(A, X))
    ).