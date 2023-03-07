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
    var quantidadeDeOlhos: Int = 2
    var comida: String = "Ração"
    var raça: String = "Doberman"
    var quantidadeDePatas: Int = 4
    
    func correr(){
        print("O cachorro está correndo")
     }
    
    func latir(){
        print("O cachorro está latindo")
        
    }
    







