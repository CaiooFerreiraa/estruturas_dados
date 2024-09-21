package validacao_de_expressao

interface Validavel {
    fun empilhaCaracter(value: String)
    fun desempilhaCaracter()
    fun validaExpressao(value: String): String
    fun olhaTopo(): String?

    fun estaCheia(): Boolean
    fun estaVazia(): Boolean
}