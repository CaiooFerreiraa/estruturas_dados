package Sistema_de_empilhamento

interface Empilhavel {
    fun empilhar(value: Any?)
    fun desempilhar(): Any?

    fun estaCheia(): Boolean
    fun estaVazia(): Boolean
    fun atualizar(value: Any?)
}