abstract class Listavel {
  void adicionar(String item);
  String listarAll();
  String listarIndex(int idx);
  void atualizar(String item, int idx);
  void deletar(int idx);
  void deletarAll();

  //Como o array do Dart é dinâmico, ele nunca ficará cheio;
  bool estaVazia();
}