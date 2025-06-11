/* 

Tipi di variabili in dart:


int: numero intero
int eta = 25;


double: numero decimale
double altezza = 1.75;


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


const: il valore non può essere cambiato e non deve essere calcolato a runtime ma dichiarato subito
const piGreco = 3.14;
const data = DateTime.now(); // errore


.runtimeType: restituisce il tipo di dato della variabile
contenitoreMisto.runtimeType; // restiuisce il tipo della variabile visto che dal nome non si capisce




*/
