package Sistema_de_empilhamento

fun main() {
    val pilha = Pilha()

    pilha.empilhar("Opa")
    pilha.empilhar("Opa 2")
    println(pilha.imprimir())
}