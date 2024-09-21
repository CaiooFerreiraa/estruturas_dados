package verificacao_de_equilibrio_de_parentese

interface Validavel {
    fun empilhaCaracter(value: String)
    fun desempilhaCaracter(value: String)
    fun validaExpressao(value: String)
    fun olhaTopo(): String

    fun estaCheia(): Boolean
    fun estaVazia(): Boolean
}