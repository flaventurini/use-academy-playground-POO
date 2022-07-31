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

let car = Carro(portas: 2, cor: "vermelho", velocidadeMaxima: 200)
car.ligarArCondicionado()
car.acelerar()

// Não roda, pq a variável é privada = print("velocidade", uno.velocidadeMaxima)
print("velocidade", car.getVelocidade())


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


//Conceito de herança:

class Uno: Carro {
    var temEscada: Bool = true
}

class BMW: Carro {
    var temAquecedorDeBancos: Bool = true
    
    func ligaAquecedorDoPassageiro() {
        print("Aquece o banco ai que ta frio")
    }
}

let uno = Uno(portas: 4, cor: "verde", velocidadeMaxima: 100)
uno.desacelerar()
uno.getVelocidade()

let bmw = BMW(portas: 2, cor: "azul", velocidadeMaxima: 250)
bmw.getVelocidade()
bmw.ligaAquecedorDoPassageiro()


//Polimorfismo - classe filha altera/sobrecreve a classe mãe:

class Computador {
    func formatar() {
        print("10 horas de formatação")
    }
}

let pc = Computador()
pc.formatar()

class Dell: Computador {
    override func formatar() {
        print("5 horas de formatação")
    }
}

let dell = Dell()
dell.formatar()

class Macbook: Computador {
    override func formatar() {
        print("3 horas de formatação")
    }
}

let macbook = Macbook()
macbook.formatar()
