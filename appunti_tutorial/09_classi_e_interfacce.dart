/*

Classi e interfacce:
(solo differenze con java)


Si deve usare "late" per dichiarare le variabili che verranno inizializzate 
dopo la creazione dell'oggetto attraverso il costruttore.
class Persona {
  late String nome;
  late String cognome;
}


Non esistono i modificatori di accesso, per dichiarare una variabile privata
si usa l'underscore "_" prima del nome della variabile.
class Utente {
  String username;
  String _password; // privata
}


I set e i get vengono scritti in modo diverso:
String get nome => nome;
oppure
String get nome {
    return nome;
}
void set nome(String nome) {
    this.nome = nome;
}


Il costruttore di default viene creato automaticamente solo se non ne esistono altri.


Nel costruttore possiamo non ripetere l'assegnazione dei parametri se usiamo
"this." nella firma del costruttore.
class Persona {
  late String nome;
  late String cognome;
  Persona(this.nome, this.cognome);
  invece di 
  Persona(String nome, String cognome) {
      this.nome = nome;
      this.cognome = cognome;
  }
}
  
Se usiamo "this." nella firma del costruttore, dobbiamo usare "required" perché
essendo posizionali si dovrebbe rispettare l'ordine dei parametri mentre nominandoli no.
class Persona {
    String nome;
    String cognome;
    Persona({required this.nome, required this.cognome});
}
Senza il required:
Persona("Rossi", "Mario"); scriverebbe nome dentro cognome e viceversa.
Persona(cognome: "Rossi", nome: "Mario"); scrive nome dentro nome, etc.
Ovviamente con 2 parametri non c'è confusione ma con 5 o più sì.


Non si puo avere più costruttori con lo stesso nome ma con nomi diversi si:
class Persona {
  late String nome;
  late String cognome;
  Persona(this.nome, this.cognome);
  invece di 
  Persona(String nome, String cognome) {
      this.nome = nome;
      this.cognome = cognome;
  }
  Persona.costruttoreStandard(){
    nome = "Mario";
    cognome = "Rossi";
  }
}


Ovveride si scrive @override invece di @Override.


Ereditarietà:
Chiamiamo diversamente super() per chiamare il costruttore della classe padre.
class Studente extends Persona {
  late String matricola;
  Studente(this.nome, this.cognome, this.matricola) : super(nome, cognome); // costruttore in forma abbreviata
}


Abstract
Nei metodi delle classi astratte non si usa "abstract" ma solo "void" prima del nome del metodo.


Interfacce:
Si dichiarano come le classi astratte quindi non si usa "interface".
abstract class Interfaccia {
  void metodo();
}
mentre in java
interface Interfaccia {
  void metodo();
}
Però per usare un interfaccia si usa sempre "implements" anche se è dichiarata
come classe astratta.
Possono essere implicite o esplicite. Quelle implicite non si dichiarano con abstract.


Static:
rimane come in java, con la differenza che in dart 
"final" è per valori a runtime
mentre
"const" è per valori a compile time cioè la variabile deve essere inizializzata con un valore non modificabile. 

*/
