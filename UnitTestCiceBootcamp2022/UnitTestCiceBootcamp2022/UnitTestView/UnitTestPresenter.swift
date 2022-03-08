//
//  UnitTestPresenter.swift
//  UnitTestCiceBootcamp2022
//
//  Created by Jorge Millan on 8/3/22.
//

import Foundation

enum SomeError: Error{
    case CeroError
}

protocol UnitTestPresenterInputProtocol{}

final class UnitTestPresenter{
    
    func sumar(numero1: Int, numero2: Int) -> Int {
        return numero1 + numero2
    }
 
    func restar (numero1: Int, numero2: Int) -> Int {
        return numero1 - numero2
    }
    
    func dividir(numero1: Int, numero2: Int) -> Int {
        return numero1 / numero2
    }
    
    func dividirCero(numero1: Int, numero2: Int) throws -> Int {
        if numero2 == 0{
            throw SomeError.CeroError
        }
        return numero1 / numero2
    }
    
    func arraySquareOptionOne(numberArray: [Int]) -> [Int] {
        var result: [Int] = []
        for index in numberArray{
            result.append(index * index)
        }
        return result
    }
}

extension UnitTestPresenter: UnitTestPresenterInputProtocol{
    
}
