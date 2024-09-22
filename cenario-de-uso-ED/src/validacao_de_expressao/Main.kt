package validacao_de_expressao

fun main() {
    val expressaoNumerica = "(5*9) + (12-9)*(4+5"
    val expressao = Expressao()

    println(expressao.validaExpressao(expressaoNumerica))
}
