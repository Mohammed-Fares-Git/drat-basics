// 1. Calcul de la somme :
import 'package:collection/collection.dart';

int calculerSomme(int a, int b) => a + b;

// 2. Calcul de la moyenne : 
num calculerMoyenne(List<num> nbrs) => nbrs.sum / nbrs.length;

// 3. Vérification de nombre pair :
bool estPair(int n) => n % 2 == 0;

// 4. Conversion de température :
double convertirCelsiusVersFahrenheit(double temperature) => temperature * 9/5 + 32;

// 5. Calcul du carré d'un nombre : 
int calculerCarre(int n) => n * n;

// 6. Vérification de palindrome :
bool estPalindrome(String c) {
  var j = c.length - 1;
  for (int i = 0; i < c.length; i++){
    if(c[i] != c[j++]){
      return false;
    }
  }
  return true;
}


// 6. Vérification de palindrome :
bool estPalindrome2(String c) => c == c.split('').reversed.join();

// 7. Comptage des voyelles : 
int compterVoyelles(String c){
  var voyelles = ['a','o','i','e','u','y'];
  var count = 0;
  c.toLowerCase().split('').forEach((char) { 
    if(voyelles.contains(char)){
      count++;
    }
   });

   return count;
}

// 8. Calcul du factoriel :
int calculerFactoriel(int n) => n == 1 || n == 0 ? 1 : calculerFactoriel(n);
  // on peut ameliorer ce solution.

// 9. Recherche du plus grand nombre :
int trouverMax(List<int> nbrs) => nbrs.max;

// 9. Recherche du plus grand nombre : avec une fonction d'extention
extension TrouverMax on List<int>{
  int trouverMax(){
    if(this.length <= 0) throw Exception('-------- the list is empty ---------');
    var temp = this.first;
    for(int i in this){
       if(i > temp) temp = i;
    }
    return temp;
  }
}

// 10. Génération de nombres premiers :
List<int> genererNombresPremiers(int n) {
  List<int> result = [];

  

  return result;
}