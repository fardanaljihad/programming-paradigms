/* 2. (a) Knowledge base */
subdir(private, documents).
subdir(work, documents).
subdir(images, private).
subdir(videos, private).
subdir(research, work).
subdir(teaching, work).

/* 2. (b) Add rules 'descendants' to retrieve descendant nodes */
descendants(X, Y) :- subdir(X, Y); subdir(X, Z), descendant(Z, Y).