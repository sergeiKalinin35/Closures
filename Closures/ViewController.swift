//
//  ViewController.swift
//  Closures
//
//  Created by Sergey on 04.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    func freeMan(parameter: String) { //функция ничего не возвращает (String) -> () или  (String) -> Void(пустота)
        
    }
    
    func changeSign(operand: Double) -> Double { // меняем знак чиста double на минус changeSign(поменять знак) operand(объект действия)
        return -operand
    }
  //  var operarion: (Double) -> Double
  //  operation = sqrt // sqrt - квадратный корень
  // operation(9) // возвращается  3
    
    
                                       // Замыкания(Closures)
    
//  1.  func changeSign(operand: Double) -> Double { return -operand }
    
 //  2. var operation = (operand: Double) -> Double { return -operand }
    
    var operation = {(operand: Double) -> Double in return -operand } // готовое замыкание самый длинный вариант сокращаем его
    
    // swift может понимать тип из контекста
    
    var operation1 = {(operand: Double)  in return -operand }
    
    var operation2 = {(operand: Double) in return -operand }
    
    var operation3 = {(operand: Double) in -operand }
    
    // заменяем название аргумента operand
     
 //   var operation4 =  { -$0 } // выдает ошибку значения Double не видит
    
    
    
                        // Замыкание в качестве аргументов
    
    func someFunction(someArray:[Int], someNumber: Int) -> [Int] {
        
         return someArray
    }
    
    
    
    
    func someFunction1(someArray:[Int], myFunction: (Int) -> Bool) -> [Int] {// объясняем функции что ей делать помогая вторым параметром
        
        return someArray
    }
    
    
    
    
    
    
    
    
    
    
    
 

    
    
}

