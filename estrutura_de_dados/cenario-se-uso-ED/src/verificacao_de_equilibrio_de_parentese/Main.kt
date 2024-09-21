package verificacao_de_equilibrio_de_parentese

fun main() {
    val expressaoNumerica = "(5*9) + (12-9)*(4+5)"
    val expressao = Expressao()

    expressao.validaExpressao(expressaoNumerica)
}