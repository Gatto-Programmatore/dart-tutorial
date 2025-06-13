/* 

Tipi di variabili in dart:
Scrivo solo le cose diverse da java.

Built-in types: variabili predefinite in Dart
Varibabili built-in: num, int, double, String, bool, List, Set, Map, Runes, 
null, object, future, stream, iterable, never, dynamic, void.


int: numero intero
int eta = 25;


double: numero decimale
double altezza = 1.75;


num: può essere sia int che double
num valoreIntero = 10;
num valoreDecimale = 3.14;


String: stringa di testo
String nomeCompleto = "Mario Rossi";


bool: valore booleano (vero o falso)
bool isStudente = true;


var: accetta tipi di dati diversi ma una volta assegnato un tipo non può essere cambiato
var annoNascita = 1999;
annoNascita = 2000; // errore, non può essere cambiato


dynamic: accetta tipi di dati diversi e può essere cambiato in qualsiasi momento
dynamic contenitoreMisto = "ciao";
contenitoreMisto = 1;
contenitoreMisto = true;


final: il valore non può essere cambiato dopo l'assegnazione ma può essere inizializzato anche in seguito
final data;
... altro codice
data = "2023-10-01"; // viene inizializzata in un secondo momento prima della compilazione
... oppure
data = DateTime.now(); // verrà inizializzata a runtime
final nome = "Mario";
nome = "Luigi"; // errore
se fosse una lista possiamo modificarla perché non stiamo riassegnando


const: il valore non può essere cambiato e non deve essere calcolato a runtime ma dichiarato subito
const piGreco = 3.14;
piGreco = 3.14159; // errore
const data = DateTime.now(); // errore
const eta; //errore


static ha lo stesso significato di java, cioè è una variabile di classe e non di istanza


Set: collezione di dati. Ignora i duplicati e l'ordine cambia quindi non dobbiamo fare affidamento 
sull'indice degli elementi
Set<int> numeri = {1, 2, 2, 3};
print(numeri); // stampa 1, 2, 3 ma potrebbe essere anche 2, 1, 3
var setNumeri = {1, 2, 2, 3}; // si possono mettere i set anche dentro tipi generici


non possiamo avere variabili non inizializzate cioè null, a meno che non siano dichiarate come nullable 
con "?" dopo il tipo
int eta;
print(eta); // errore
int? etaNullable;
print(etaNullable); // ok, stampa null


interpolazione di stringhe: per inserire variabili in una stringa si usa il simbolo $
String nome = "Mario";
String messaggio = "Ciao, $nome!";
int eta = 25;
print("Ciao, sono ${nome} e ho ${eta} anni.");


.runtimeType: restituisce il tipo di dato della variabile
contenitoreMisto.runtimeType; // restiuisce il tipo della variabile visto che dal nome non si capisce


print(): stampa il valore della variabile

*/
