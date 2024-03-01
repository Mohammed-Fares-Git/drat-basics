void main(List<String> args) {
  

  Map<String, num> resultas = {
    'Mohammed Fares': 16,
    'Amine Ouanda': 17.25,
    'Soufyane Felate': 18,
    'Youness Kinani': 16.75
  };

  resultas['Jihad ElHamzaoui'] = 15.5;
  resultas['Oumaima Chahi'] = 15.5;
  resultas['Ikram Abida'] = 15.5;

  resultas.remove('Amine Ouanda');

  print(resultas);
}