package validacao_de_expressao

class Expressao: Validavel {
    private var tamanho: Int
    private val arrayCaracter: Array<String?>
    private var index: Int

    constructor(tamanho: Int = 10){
        this.tamanho = tamanho
        this.arrayCaracter = arrayOfNulls(this.tamanho)
        index = -1
    }

    override fun empilhaCaracter(value: String) {
        if (estaCheia()) {
            println("A pilha está cheia, não é possível empilhar")
        } else {
            index++
            arrayCaracter[index] = value
        }
    }

    override fun desempilhaCaracter() {
        arrayCaracter[index] = null
        index--
    }

    override fun estaCheia(): Boolean {
        return index > (tamanho -1)
    }

    override fun estaVazia(): Boolean {
        return index == -1
    }

    override fun olhaTopo(): String {
        if (estaVazia()) return "Pilha vazia"
        return arrayCaracter[index].toString()
    }

    override fun validaExpressao(value: String): String {
        var iterator: Int = 0;

        while (iterator < value.length) {
            if (value[iterator].toString() == "(") empilhaCaracter("(")
            if (value[iterator].toString() == ")") {
                if (estaVazia()) return "Expressão inválida"
                desempilhaCaracter()
            }
            iterator++
        }

        if (arrayCaracter.all { it == null }) return "Expressão válida" else return "Expressão inválida"
    }
}