//
//  main.swift
//  heranca
//
//  Created by Mikael Rodrigues on 09/03/23.
//

import Foundation

print("Hello, World!")

//  Created by Caio Fabrini on 09/03/23.
//

import Foundation


// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animal {

}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

class Veiculo {
    
    var rodas: Int = 4
    var gasolina: Double = 100.0
    var marca: String = "Honda"
    
    func andar(){
        print("O carro está andando")
    }
    
    func buzinar(){
        print("BIII BIIII")
    }
        init(rodas: Int, gasolina: Double, marca: String) {
            self.rodas = rodas
            self.gasolina = gasolina
            self.marca = marca
        }
        
    }
    


class Caminhonete: Veiculo {
    
    var quatroXQuatro: Bool
    var amortecedor: Double
    
    init(quatroXQuatro: Bool, amortecedor: Double, rodas: Int, gasolina: Double, marca: String) {
        self.quatroXQuatro = quatroXQuatro
        self.amortecedor = amortecedor
        super.init(rodas: rodas, gasolina: gasolina, marca: marca)
    }
   
    
    
}

class Moto: Veiculo {
    var cor: String = "vermelha"
    var guidoes: Int = 2
    
    
}

var criacao: Caminhonete = Caminhonete(quatroXQuatro: true, amortecedor: 80.0, rodas: 4, gasolina: 100.0, marca: "Honda")

print(criacao.rodas)
print(criacao.quatroXQuatro)
print(criacao.gasolina)
print(criacao.amortecedor)
print(criacao.marca)


class Homem {
    var altura: Double
    var cabelo: String
    var cor: String
    
    init(altura: Double, cabelo: String, cor: String){
        self.altura = altura
        self.cabelo = cabelo
        self.cor = cor
    }
    func andar() {
        print("andando...")
    }
    
    func comer() {
        print("comendo...")
    }
    
}

class Mulher: Homem {
    
    var maquiagem: Bool
    var cabeloLongo: Bool
    
    init(maquiagem: Bool, cabeloLongo: Bool, altura: Double, cabelo: String, cor: String){
        self.maquiagem = maquiagem
        self.cabeloLongo = cabeloLongo
        super.init(altura: altura, cabelo: cabelo, cor: cor)
    }
}

var resultado: Mulher = Mulher(maquiagem: false, cabeloLongo: true, altura: 1.70, cabelo: "Preto", cor: "Branca")

if resultado.maquiagem == true && resultado.cabeloLongo == true{
    print("Uma linda mulher")
}else{
    print("Pode ficar mais bonita...")
}

print(resultado.maquiagem)
print(resultado.cabeloLongo)
print(resultado.altura)
print(resultado.cabelo)
print(resultado.cor)

    //Desafios de Construtores:
 //Nota: Vocês tem total liberdade de escolher o tipo das variáveis. Sugiro que usem tipos diversos.
 
 //Crie uma classe chamada "Livro" que tenha as propriedades "titulo", "autor" e "preço". Em seguida, crie uma subclasse chamada "LivroDigital" que herde da classe "Livro" e tenha uma propriedade adicional chamada "formato". Crie dois construtores para a classe "LivroDigital". O primeiro deve aceitar o "formato" como parâmetro enquanto o segundo não deve aceitá-lo. Quando o "formato" não for fornecido, defina-o como "PDF". Defina então um método chamado "analisarPreco" que receba o "titulo" e o "preço" do livro como parâmetros e imprima "Livro caro" se o preço for maior que 25 ou "Livro barato", caso contrário.

// Crie uma classe chamada "FormaGeometrica" com as propriedades "largura" e "altura". Em seguida, crie uma subclasse chamada "Retangulo" que tenha um método "calcularArea" que calcula a área do retângulo (largura * altura). Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir a largura e a altura e imprima o resultado.
 
 //Crie uma classe chamada "ContaBancaria" com as propriedades "saldo" e "tipo". Em seguida, crie uma subclasse chamada "ContaCorrente" que tenha uma propriedade adicional chamada "limite" e um método "atualizarSaldo" que adiciona o limite ao saldo da conta. Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir o "saldo" e o "tipo". Você pode ainda criar um método "imprimirSaldo" que imprime o saldo atualizado da conta.


class Livro {
    
    var titulo: String
    var autor: String
    var preco: Double
  
    init(titulo: String, autor: String, preco: Double){
        self.autor = autor
        self.titulo = titulo
        self.preco = preco
    }
}

class LivroDigital: Livro {
    
    var formato: String
    
    init(formato: String, titulo: String, autor: String, preco: Double){
        self.formato = formato
        super.init(titulo: titulo, autor: autor, preco: preco)
    }
    
}

var escolherLivro: LivroDigital = LivroDigital(formato: "Capa dura", titulo: "Perci jakson", autor: "Pedrinho do morro", preco: 30.00)

if escolherLivro.formato == "Capa dura" || escolherLivro.formato == "capa dura"{
    print("Livro Capa Dura.")
}else{
    print("PDF")
}

func analisarPreco(preco: Double, nome: String) -> Double{
    if preco <= 25.0{
     print("livro barato")
    }else{
        print("livro caro")
    }
    return preco
}

var analisa = analisarPreco(preco: 50.0, nome: "Perci Jakson")

print(analisa)

