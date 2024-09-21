package validacao_de_expressao

class Expressao: Validavel {
    private var tamanho: Int
    private val arrayCaracter: Array<String?>
    private var index: Int
    private var valide: Boolean

    constructor(tamanho: Int = 10){
        this.tamanho = tamanho
        this.arrayCaracter = arrayOfNulls(this.tamanho)
        index = -1
        valide = true;
    }

    override fun empilhaCaracter(value: String) {
        if (estaCheia()) {
            println("A pilha está cheia, não é possível empilhar")
        } else {
            index++
            arrayCaracter[index] = value
        }
    }

    override fun desempilhaCaracter(value: String) {
        if (estaVazia()) {
            valide = false
        } else {
            arrayCaracter[index] = null
            index--
        }
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

    override fun validaExpressao(value: String) {
        var iterator: Int = 0;

        while (iterator < value.length) {
            if (value[iterator].toString() == "(") empilhaCaracter(value[iterator].toString())
            if (value[iterator].toString() == ")") desempilhaCaracter(value[iterator].toString())
            iterator++
        }

        if (valide && arrayCaracter.all { it == null }) {
            println("Expressão válida")
        } else {
            println("Expressão inválida")
        }
    }
}