what_is(["mata kuliah", 
         "Prinsip Bahasa Pemrograman", 
         "Pemrograman Berorientasi Object", 
         "Teknik Pemrograman"]).

what_is([Category|MataKuliah]) :- member(Category, MataKuliah).