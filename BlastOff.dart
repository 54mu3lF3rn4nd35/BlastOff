import 'dart:math';

void main() {
  
  void tarefa1(){
    String valor = '1834';
    List<String> unidades = ['unidade', 'dezena', 'centena', 'unidade de milhar'];
    if (int.parse(valor) > 0 && int.parse(valor) < 9999){
      int nChar = valor.length;
      for (int i = 0; i <= nChar; i++) {
        print(unidades[i] + ': ' + valor[nChar - i - 1]);
      }
    }  
  }
  void tarefa2(){
    String nome = "Samuel Campos Fernandes Alves";
    print(nome.toUpperCase());
    print(nome.toLowerCase());  
    dynamic nChar = 0;
    dynamic listNome = nome.split(' ');
    listNome.forEach((nome){
      nChar += nome.length;
    });
    print('Número de letras: ' + nChar.toString());
    print('O primeiro nome tem o total de ' + listNome[0].length.toString() + ' letras.');
    
  }
  void tarefa3(){
    dynamic temperatura = 120;
    dynamic unidade = 'F'; // C ou F.
    dynamic novaTemperatura;
    if (unidade == "C") {
    novaTemperatura = (temperatura * 9 / 5) + 32;
    print("$temperatura graus Celsius correspondem a $novaTemperatura graus Fahrenheit.");
    } else if (unidade == "F") {
    novaTemperatura = (temperatura - 32) * 5 / 9;
    print("$temperatura graus Fahrenheit correspondem a $novaTemperatura graus Celsius.");
   } else {
    print("Unidade de medida inválida.");
   }
  }
  void tarefa4(){
    int randomNumber = Random().nextInt(6);
    int palpite = 3;
    if (palpite == randomNumber) {
      print('Parabéns, você acertou!');
    } else {
      print('Que pena, você errou. O número era $randomNumber');
    }
  }
  void tarefa6(){
    double lado1 = 4.5;
    double lado2 = 5.5;
    double lado3 = 10.0;

    if ((lado1 + lado2 > lado3) &&
      (lado1 + lado3 > lado2) &&
      (lado2 + lado3 > lado1)) {
      print('As retas de comprimentos $lado1, $lado2 e $lado3 podem formar um triângulo.');
    } else {
      print('As retas de comprimentos $lado1, $lado2 e $lado3 não podem formar um triângulo.');
    }
  }
  void tarefa7(){
    List<String> utensilios = [
    'Conjunto de panelas', 'Panela de pressão', 'Frigideira antiaderente', 'Descanso de panelas',
    'Faqueiro', 'Tábua de corte de carnes (madeira ou vidro)', 'Conjunto de medidores', 'Fouet',
    'Saca rolhas', 'Abridor de latas e garrafas', 'Tesoura', 'Ralador', 'Funil', 'Leiteira', 
    'Coador de café', 'Chaleira', 'Escorredor de macarrão'
    ];

    utensilios.sort();

    String field = 'ral';

    List<String> utensiliosFiltrados = utensilios.where((u) => u.toLowerCase().contains(field.toLowerCase())).toList();

    print('Utensílios de cozinha:');
    utensilios.forEach((u) => print(u));

    print('\nUtensílios filtrados por "$field":');
    utensiliosFiltrados.forEach((u) => print(u));
  }
  
  tarefa1();
  tarefa2();
  tarefa3();
  tarefa4();
  tarefa6();
  tarefa7();
}