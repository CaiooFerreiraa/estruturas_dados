import 'Listavel.dart';

class Lista implements Listavel {
  int _quantidade = 0;
  List<String> _ALista = [];
  int _ponteiroInicio = 0;
  int _ponteiroFim = -1;

  @override
  void adicionar(String item) {
    _ALista.add(item);
    _quantidade++;
    _ponteiroFim = (_ponteiroFim+1)%_ALista.length;
  }

  @override
  String listarAll() {
    String aux = '[';

    if (estaVazia()) return 'A lista está vazia';

    for(int i = _ponteiroInicio; i <= _quantidade-1; i++) {
      if (i == _quantidade-1) {
        aux += '"${_ALista[i % _ALista.length]}"';
      } else {
        aux += '"${_ALista[i % _ALista.length]}", ';
      }
    }

    return aux += ']';
  }

  @override
  String listarIndex(int idx) {
    String aux = '[';

    if (estaVazia()) return 'A lista está vazia';
    if (idx < 0 || idx > _quantidade) return 'Digite uma posição válida';

    for(int i = idx; i < _quantidade; i++) {
      if (i == _quantidade-1) {
        aux += '"${_ALista[i % _ALista.length]}"';
      } else {
        aux += '"${_ALista[i % _ALista.length]}", ';
      }
    }
    return aux += ']';
  }
  
  @override
  void atualizar(String item, int idx) {
    int posicaoFisica = (idx + _ponteiroInicio) % _ALista.length;

    if (estaVazia()) {
      print('A lista está vazia');
    } else {
      if (idx < 0 || idx > _quantidade) {
        print('Digite uma posição válida');
      } else {
        _ALista[posicaoFisica] = item;
      }
      
    }
  }
  
  @override
  void deletar(int idx) {
    if (estaVazia()) {
      print('A lista está vazia');
    } else {
      if (idx < 0 || idx > _quantidade) {
        print('Digite uma posição válida');
      } else {
        for(int i = idx; i < _quantidade-1; i++) {
          _ALista[i%_ALista.length] = _ALista[(i+1)%_ALista.length];
        }
        _quantidade--;
        _ponteiroFim = (_ponteiroFim-1)%_ALista.length;
      }
    }
  }
  
  @override
  void deletarAll() {
    _quantidade = 0;
    _ponteiroInicio = 0;
    _ponteiroFim = -1;
    print('Itens deletados com sucesso');
  }
  
  //Como o array do Dart é dinâmico, ele nunca ficará cheio;
  
  @override
  bool estaVazia() {
    return _quantidade == 0;
  }
}