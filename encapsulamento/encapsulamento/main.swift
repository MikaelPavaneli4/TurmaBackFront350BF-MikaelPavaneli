//
//  main.swift
//  encapsulamento
//
//  Created by Mikael Rodrigues on 15/03/23.
//

import Foundation

print("Hello, World!")




// MARK: - Encapsulamento

// Private -> privado, ou seja, que não tenha acesso externo
// Public -> publico, ou seja, que tenha acesso externo

class Carro {
    
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String {
        return self.modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
    
}

var meuCarro: Carro = Carro(modelo: "BMW 320i")

print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "La Ferrari")
print(meuCarro.getModelo())





