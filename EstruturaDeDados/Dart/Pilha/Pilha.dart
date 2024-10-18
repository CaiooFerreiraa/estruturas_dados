import 'Empilhavel.dart';

class Pilha implements Empilhavel {
  List<String> _APilha = [];
  
  @override
  void atuzalizar(String dado) {
    estaVazia() ? print('A pilha está vazia') : _APilha[_APilha.length-1] = dado;
  }
  
  @override
  void desempilhar() {
    estaVazia() ? print('A pilha está vazia') : _APilha.removeLast();
  }
  
  @override
  void empilhar(String dado) {
    _APilha.add(dado);
  }
  
  @override
  bool estaVazia() {
    return _APilha.isEmpty;
  }
  
  @override
  String imprimir() {
    String aux = '[';

    if (estaVazia()) return 'A pilha está vazia';
    for(int i = 0; i < _APilha.length; i++) {
      if (i == _APilha.length-1) {
        aux += '"${_APilha[i % _APilha.length]}"';
      } else {
        aux += '"${_APilha[i % _APilha.length]}", ';
      }
    }

    return aux + ']';
  }
  
  @override
  String olharTopo() {
    return estaVazia() ? 'A pilha está vazia' : _APilha.last;
  }
}