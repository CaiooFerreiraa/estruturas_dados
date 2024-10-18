import 'Lista.dart';

void main() {
  var lista = new Lista();
  lista.adicionar('Arroz');
  lista.adicionar('Feijão');
  lista.adicionar('Macarrão');
  //lista.deletar(0);
  //print(lista.listarIndex(0));
  print(lista.listarAll());
}