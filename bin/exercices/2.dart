

void main(List<String> args) {
  List<int> numbres = [21,46,87,79,63];

  int somme = 0;

  for(int i in numbres){
    somme += i;
  }

  print('la somme est $somme');
}