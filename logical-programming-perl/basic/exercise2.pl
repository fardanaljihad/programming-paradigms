/* 2. (a) Knowledge base */
subdir(documents, private).
subdir(documents, work).
subdir(private, images).
subdir(private, videos).
subdir(work, research).
subdir(work, teaching).

/* 2. (b) Add rules 'descendants' to retrieve descendant nodes */
