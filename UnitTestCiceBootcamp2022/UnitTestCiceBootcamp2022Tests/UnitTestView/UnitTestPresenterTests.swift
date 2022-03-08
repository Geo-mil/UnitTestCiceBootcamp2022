//
//  UnitTestPresenterTests.swift
//  UnitTestCiceBootcamp2022Tests
//
//  Created by Jorge Millan on 8/3/22.
//

import XCTest
@testable import UnitTestCiceBootcamp2022

class UnitTestPresenterTests: XCTestCase {

    //Subject under test
    var presenter: UnitTestPresenter!

    override func setUp() {
        // inicializa todas las instancias del objeto bajo prueba
        print(#function, "<-- ZZZ")
        presenter = UnitTestPresenter()
    }
    
    override func tearDown() {
        // elimina las instancias por cada test qeu se ejecuta
        print(#function, "<-- YYY")
        presenter = nil
    }
    
    func test_UnitTestPresenter_NotNil() {
        print(#function, "<-- AAA")
        XCTAssertNotNil(presenter)
    }
    
    // Nombre del metodo / status bajo prueba / comportamiento esperado
    func test_Sumar_InputCorrecto_OK_Result() {
        // 1 -> Arrange / GIVEN
        let resultExpected = 11
        let result: Int
        // 2 -> Action / WHEN
        result = presenter.sumar(numero1: 7, numero2: 4)
        // 3 -> Assert / THEN
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Restar_InputCorrecto_OK_Result() {
        // 1 -> Arrange / GIVEN
        let resultExpected = 3
        let result: Int
        // 2 -> Action / WHEN
        result = presenter.restar(numero1: 7, numero2: 4)
        // 3 -> Assert / THEN
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Restar_InputCorrecto_Two_OK_Result() {
        // 1 -> Arrange / GIVEN
        let resultExpected = -10
        let result: Int
        // 2 -> Action / WHEN
        result = presenter.restar(numero1: 10, numero2: 20)
        // 3 -> Assert / THEN
        XCTAssertEqual(resultExpected, result)
    }
    
    func test_Dividir_InputCorrecto_OK_Result() {
        XCTAssertEqual(2, presenter.dividir(numero1: 4, numero2: 2))
    }
    
    func test_Dividir_InputIncorrecto_OK_Result() {
        XCTAssertEqual(2, try presenter.dividirCero(numero1: 4, numero2: 2))
        XCTAssertThrowsError(try presenter.dividirCero(numero1: 4, numero2: 0))
    }
    
    func test_Array_Square_Option_One_Result() {
        var numbers = [Int]()
        for index in 1...4{
            numbers.append(index)
        }
        let numberSquare = presenter.arraySquareOptionOne(numberArray: numbers)
        
        var resultExpected = [Int]()
        resultExpected.append(1)
        resultExpected.append(4)
        resultExpected.append(9)
        resultExpected.append(16)
        
        XCTAssertEqual(resultExpected, numberSquare)
    }
    
}
