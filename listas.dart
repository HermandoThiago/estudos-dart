void main(){
  
  // Gere uma lista de 15 itens do tipo int
  // sendo que cada item da lista deverá ter seu valor 
  // igual ao valor do índice ao quadrado.
  
  final List<int> inteiros = List.generate(15, (int index) => index * index);
  
  // Printe o valor de cada item da lista utilizando o método forEach.
  
  inteiros.forEach((int a) { print(a); });
  
  // Verifique se a lista gerada contém o item de valor '50'.
  
  if(inteiros.contains(50)){
    print("A lista contém o valor 50");
  }else{
    print("A lista não possui o valor 50");
  }
  
  
  // Reverta a ordem dos itens dessa lista, retornando uma nova lista no lugar.
  
  final List<int> reverso = inteiros.reversed.toList();
  print(reverso);
  
  // Crie uma nova lista do tipo 'double' baseado na lista gerada. Os itens da nova lista 
  // devem ser o resultado do respectivo item da lista antiga divido por 2.
  
  final List<double> floats = inteiros.map((a) => a / 2).toList();
  
  // Crie uma nova lista que seja um 'filtro' da lista antiga, contendo apenas seus valores pares.
  
  final List<int> pares = [];
  
  for(int a in inteiros){
     if(a.isEven){pares.add(a);}
  }
  
  print(pares);
  
}