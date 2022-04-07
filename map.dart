void main(){

  final Map<String, String> map = {

    "1": "first_item",
    "2": "second_item",
    "3": "third_item"

  };

  // Printar o map
  print(map);

  // verifique se o map é vazio (ou seja, se não possui nenhum par chave-valor).
  if(map.isEmpty){
    print("Map vazio");
  }else{
    print("Map possui conteúdo");
  }

  // printe apenas as chaves do map.
  print(map.keys.toList());

  // printe apenas os valores das chaves do map.
  print(map.values.toList());

  // printe o comprimento do map (quantidade de pares chave-valor).
  print(map.length);

  // verifique se o map contém a chave 'key'.
  if(map.containsKey("key")){
    print("O map possui a chave key");
  }else{
    print("O map não possui a chave key");
  }

  // verifique se o map contém o valor 'first_item'.
  if(map.containsValue("first_item")){
    print("O map possui o valor first_item");
  }else{
    print("O map não possui o valor first_item");
  }

  // percorra cada par chave-valor do map e printe na tela seus respectivos valores de chave e valor.
  map.forEach((key, value) { print("$key $value"); });

  // remova a chave "3" do map e printe o map atualizado.
  map.remove("3");
  print(map);

  // crie um map a partir do map já existente. O novo map deverá ter as mesmas chaves,
  // mas o valor das chaves deverá ser igual ao comprimentos das Strings dos valores do primeiro map
  final Map<String, String> map2 = map.map((String key, String value) => MapEntry(key, value.length.toString()));
  print(map2);

  // remova todas as chaves cujo o valor seja uma string que possua mais do que 4 caracteres.
  map.removeWhere((key, value) => value.length > 4);
  print(map);

}