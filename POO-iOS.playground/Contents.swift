import Foundation

//Objetos

/*

O struct não precisa de inicializados. O Class, o que vamos usar nesse código, precisa do 'init', porque não estamos informando os valores iniciais na declaração de variável
 
 struct MeuCarro {
    var portas: Int
    var cor: String
    var velocidadeMaxima: Int
}

let carrinho = MeuCarro(portas: <#T##Int#>, cor: <#T##String#>, velocidadeMaxima: <#T##Int#>)
 */

class Carro {
    var portas: Int
    var cor: String
    private var velocidadeMaxima: Int
    
    init(portas: Int, cor: String, velocidadeMaxima: Int) {
        self.portas = portas
        self.cor = cor
        self.velocidadeMaxima = velocidadeMaxima
    }
    
    func acelerar() {
        print("acelerou")
    }
    
    func desacelerar() {
        print("desacelerou")
    }
    
    func ligarArCondicionado() {
        print("gelou")
    }
    
    func getVelocidade() -> Int {
        return velocidadeMaxima
    }
}

let uno = Carro(portas: 2, cor: "vermelho", velocidadeMaxima: 200)
uno.ligarArCondicionado()
uno.acelerar()

// Não roda, pq a variável é privada = print("velocidade", uno.velocidadeMaxima)
print("velocidade", uno.getVelocidade())


// Exemplo de funções protegidas pelo encapsulamento para que sejam utilizadas apenas dentro da própria classe e não fora dessa estrutura:

class ContaCorrente {
    func calculaCredito() -> Double {
        getCheque()
        getBalance()
        return 0.0
    }
    
    private func getCheque() {
        
    }
    
    private func getBalance() {
        
    }
}
