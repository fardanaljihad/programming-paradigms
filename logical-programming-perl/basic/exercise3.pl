follows(anne,fred).
follows(fred,julie).
follows(fred,susan).
follows(john,fred).
follows(julie,fred).
follows(susan,john).
follows(susan,julie).
tweets(anne,tweet1).
tweets(anne,tweet5).
tweets(fred,tweet2).
tweets(fred,tweet7).
tweets(fred,tweet8).
tweets(john,tweet3).
tweets(john,tweet4).
tweets(julie,tweet6).
tweets(susan,tweet9).
tweets(susan,tweet10).

/* 3. (a) Add rules 'friends' to find person who are friend (i.e follow each other). */
friends(X, Y) :- follows(X, Y), follows(Y, X).

/* 3. (b) Add rules 'freed_sees' to find tweet which can Freed see (assuming the only direct 
followers will see at tweet) */
freed_sees(X, T) :- follows(X, Y), tweets(Y, T).