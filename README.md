# Assignment-1---Simple-DB-with-Hashmap-based-Index

--**Guide til at køre programmet**--

Metode 1 (**!!!Kun hvis du har ruby og gdbm installeret!!!**):

- Lokaliser mappen der indeholder; simple_db.rb

- Skriv: ruby simple_db.rb

- Programmet vil give en række kommandoer, som du kan indtaste.

Metode 2:

- Lokaliser mappen der indeholder; simple_db.rb

- Skriv docker run -it --rm -v $(pwd):/src -w /src helgecph/pythonruby sh -c "ruby simple_db.rb"

- Programmet vil give en række kommandoer, som du kan indtaste.


--**Intro til programmet**--

Programmet har en række kommandoer:

"set" tager den indtastet data og smider det ind i et hash, som også bliver gemt i "database.db" filen.
"get" tager den intastet key og tjekker database.db efter den key og den tilsvarende value og printer det ud.
"read" skriver alt data ud fra "database.db" linje for linje.
"exit" lukker programmet.
"help" printer alle kommandoerne.
