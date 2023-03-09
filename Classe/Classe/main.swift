//
//  main.swift
//  Classe
//
//  Created by Mikael Rodrigues on 07/03/23.
//

import Foundation

print("Hello, World!")


// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
}


class Cachorro {
    
    var corDoPelo: String = "caramelo"
    var pesoDoCachorro: Double = 20.00
    var comida: String = "Ração"
    var raca: String = "Doberman"
    var quantidadeDePatas: Int = 4
    
    func correr() {
        print("O cachorro está correndo")
    }
    
    func latir() {
        print("O cachorro está latindo")
        
    }
}



class Videogame {
    
    var cor: String = "preto"
    var peso: Double = 7.50
    var preco: Float = 1800.50
    var pilhas: Bool = true
    var controle: Int = 2
    
    func ligar(){
        print("O video Game está ligando.")
        
    }
    func rodarJogo(){
        print("rodando o jogo!!")
    }
    
}


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

class Bicicleta {
    
    
    
    
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)



class Casa{
    
    var comida = 10
    
    
    
}

print(Casa.comida)
