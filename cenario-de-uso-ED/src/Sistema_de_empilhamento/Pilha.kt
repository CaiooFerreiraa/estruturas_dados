package Sistema_de_empilhamento

class Pilha: Empilhavel {
    private val arrayTest: Array<Any?>
    private var index: Int
    constructor(tamanho: Int = 10) {
        arrayTest = arrayOfNulls(tamanho)
        index = -1
    }

    override fun estaCheia(): Boolean {
        return index == arrayTest.size - 1
    }

    override fun estaVazia(): Boolean {
        return index ==  -1
    }

    override fun desempilhar(): Any? {
        var aux: Any? = null
        if (!estaCheia()) aux = arrayTest[index]
        index--
        return aux
    }

    override fun atualizar(value: Any?) {
        if (!estaVazia()) {
            arrayTest[index] = value;
        } else {
            println("Stack is empty")
        }
    }

    override fun empilhar(value: Any?) {
        if (!estaCheia()) {
            index++
            arrayTest[index] = value;
        } else {
            println("A pilha está cheia")
        }
    }

    fun imprimir(): String {
        var retorno = "["

        for (i in index downTo 0) {
            retorno += if (i == 0) {
                "${arrayTest[i]}"
            } else {
                "${arrayTest[i]},"
            }

        }
        return "$retorno]"
    }
}