cek_tahun(X, [X|_]).
cek_tahun(X, [_|Y]) :- member(X, Y).