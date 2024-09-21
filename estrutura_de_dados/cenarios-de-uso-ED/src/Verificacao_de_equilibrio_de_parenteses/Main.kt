package Verificacao_de_equilibrio_de_parenteses

fun main() {
    val expressaoNumerica = "(5*2)+(5*2)-((2-6)*2)"
    val expressao = Expressao();

    expressao.validarExpressao(expressaoNumerica);
}

