package Verificacao_de_equilibrio_de_parenteses

class Expressao() : Verificavel {
    private val arrayExpressao: Array<String?>
    private var tamanho: Int = 20;
    private var index: Int

    init {
        this.arrayExpressao = arrayOfNulls(tamanho)
        this.index = -1
    }

    override fun empilhaParentese(value: String) {
        if (estaCheia()) {
            println("A pilha está cheia")
        } else {
            index++
            arrayExpressao[index] = value
        }
    }

    override fun desempilhaParentese(value: String) {
        if (estaVazia()) {
            println("A pilha está vazia")
        } else {
            arrayExpressao[index] = null
            index--
        }
    }

    override fun estaVazia(): Boolean {
        return index == -1;
    }

    override fun estaCheia(): Boolean {
        return index == (tamanho-1)
    }

    override fun validarExpressao(value: String) {
        var interator: Int = 0

        while (interator < value.length) {
            if (value[interator] == '(') empilhaParentese(value[interator].toString())
            if (value[interator] == ')') desempilhaParentese(value[interator].toString())
            interator++
        }

        if (!arrayNull()) {
            println("Expressão inválida")
        } else {
            println("Expressão válida")
        }

    }

    override fun olharTopo(): String? {
        if (estaVazia()) return "Não é possivel olhar uma pilha vazia"
        return arrayExpressao[index];
    }

    private fun arrayNull(): Boolean {
        return arrayExpressao.all { it == null }
    }
}