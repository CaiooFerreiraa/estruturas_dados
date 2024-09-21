package validacao_de_expressao

interface Validavel {
    fun empilhaCaracter(value: String)
    fun desempilhaCaracter(value: String)
    fun validaExpressao(value: String)
    fun olhaTopo(): String

    fun estaCheia(): Boolean
    fun estaVazia(): Boolean
}