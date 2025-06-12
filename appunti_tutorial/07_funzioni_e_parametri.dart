/*

Indice:
- Funzioni
  - Normali
  - Arrow
  - Anonime
-Parametri nelle funzioni
  - Di default
  - Opzionali
  - Nominati
  - Obbligatori
  - Null


Funzione normali o semplicemente funzioni:
int somma(it num1, int num2) {
    return num1 + num2;
}


Funzioni Arrow o Arrow functions:
Vengono tolte le graffe e la parola chiave return che sono sostituite da =>
int somma(it num1, int num2) => num1 + num2;


Funzioni anonime:
Sono delle normali funzioni ma senza nome.
var lista = {1, 2, 3, 4, 5}.map((e) => e + 5).toList();
print(lista); // stampa [6, 7, 8, 9, 10] in quanto ad ogni elemento "e" viene sommato 5.
In questo esempio la funzione anonima viene passata come parametro al metodo `map` della lista.
Potevamo scriverla anche con una funzione normale in questo modo:
var lista = {1, 2, 3, 4, 5}.map(somma).toList();
int somma(int e) {
    return e + 5;
}


Parametri di default:
int somma(int num1 = 1, int num2 = 2) {
    return num1 + num2;
}
somma(); // ritorna 3 in quanto i parametri di default sono 1 e 2.
mentre senza il default:
int somma(int num1, int num2) {
    return num1 + num2;
}
somma(); // ritorna un errore


Parametri opzionali:
Si scrivono nelle parentesi quadre sempre nella firma della funzione.
int somma(int num1, [int num2 = 2]) {
    return num1 + num2;
}
somma(1); // ritorna 3 in quanto il secondo parametro è opzionale e di default è 2 quindi possiamo ometterlo.
somma(1, 3); // ritorna 4 in quanto il secondo parametro è stato passato come 3.


Parametri posizionali:
Si scrivono tra parentesi graffe sempre nella firma della funzione.
int somma({int num1 = 1, int num2 = 2}) {
    return num1 + num2;
}
somma(num1: 1, num2: 2);
somma(num2: 2, num1: 1); // va bene perché i parametri sono nominati. In una funzione normale darebbe errore.


Paremtri obbligatori:
Si aggiunge la parola required prima del parametro nella firma della funzione.
int somma({required int num1, required int num2}) {
    return num1 + num2;
}
somma(num1: 1, num2: 2);
somma(); // errore


Parametri null:
Si aggiunge il simbolo ? dopo il tipo del parametro nella firma della funzione come nelle variabili.
int somma(int? num1, int? num2) {
    return (num1 ?? 0) + (num2 ?? 0); // se il parametro è null ritorna 0
}
somma(null, null); // ritorna 0, senza il simbolo "?" darebbe errore perché i numeri non possono essere null.




*/