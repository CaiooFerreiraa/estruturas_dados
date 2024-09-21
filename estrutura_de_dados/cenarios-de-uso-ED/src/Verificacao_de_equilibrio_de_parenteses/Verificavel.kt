package Verificacao_de_equilibrio_de_parenteses

public interface Verificavel {

    fun empilhaParentese(value: String)
    fun validarExpressao(value: String)
    fun desempilhaParentese(value: String)
    fun olharTopo(): String?
    fun estaCheia(): Boolean
    fun estaVazia(): Boolean
}