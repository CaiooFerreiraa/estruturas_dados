import 'Enfileiravel.dart';

class Fila implements Enfileiravel {
  List<String> _AFila = [];
  int _ponteiroInicio = 0;
  int _ponteiroFim = -1;
  int _quantidade = 0;

  //Como o array do Dart é dinâmico, ele nunca ficará cheio;

  @override
  bool estaVazia() {
    return _quantidade == 0;
  }

  @override
  void enfileirar(String pessoa) {
    _AFila.add(pessoa);
    _quantidade++;
    _ponteiroFim = (_ponteiroFim + 1) % _AFila.length;
  }

  @override
  String mostrar() {
    return estaVazia() ? 'A fila está vazia' : _AFila.elementAt(_ponteiroFim);
  }

  @override
  void atualizarFrente(String pessoa) {
    estaVazia() ? print('A fila está vazia') : _AFila[_ponteiroInicio] = pessoa;
  }

  @override
  void atualizarAtras(String pessoa) {
    estaVazia() ? print('A fila está vazia') : _AFila[_ponteiroFim-1] = pessoa;
  }

  @override
  void desenfileirar() {
    if (estaVazia()) {
      print('A fila está vazia');
    } else {
      _AFila.removeLast();
      _quantidade--;
    }
  }

  @override
  String imprimir() {
    String aux = '[';

    if (estaVazia()) return aux+=']';

    for(int i = _ponteiroInicio; i <= _quantidade-1; i++) {
      if (i == _quantidade-1) {
        aux += '"${_AFila[i % _AFila.length]}"';
      } else {
        aux += '"${_AFila[i % _AFila.length]}", ';
      }
    }

    return aux+=']';
  }
}