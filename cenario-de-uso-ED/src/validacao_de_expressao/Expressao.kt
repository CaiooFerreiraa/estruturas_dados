package validacao_de_expressao

class Expressao: Validavel {
    private val arrayCaracter: Array<String?>
    private var index: Int

    constructor(tamanho: Int = 10){
        this.arrayCaracter = arrayOfNulls(tamanho)
        index = -1
    }

    override fun estaCheia(): Boolean {
        return index == arrayCaracter.size -1
    }

    override fun estaVazia(): Boolean {
        return index == -1
    }

    override fun empilhaCaracter(value: String) {
        if (estaCheia()) {
            println("A pilha está cheia, não é possível empilhar")
        } else {
            index++
            arrayCaracter[index] = value
        }
    }

    override fun desempilhaCaracter(): Boolean {
        if (!estaVazia()) {
            index--
            return true
        }
        return false
    }

    override fun olhaTopo(): String? {
        var aux: String? = null
        if (estaVazia()) aux = "Pilha vazia"
        return aux.toString()
    }

    override fun validaExpressao(value: String): String {
        var iterator: Int = 0;

        while (iterator < value.length) {
            if (value[iterator].toString() == "(") empilhaCaracter("(")
            if (value[iterator].toString() == ")") {
                if(!desempilhaCaracter()) return "Expressão inválida"
            }
            iterator++
        }

        if (estaVazia()) return "Expressão válida" else return "Expressão inválida"
    }


}