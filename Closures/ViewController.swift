//
//  ViewController.swift
//  Closures
//
//  Created by Sergey on 04.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // разберем пример когда функция что-то повторно делает
         
         // у Array есть метод с именем map( возвращает новый массив)
         
         var numbers = [2.0, 3.0, 5.0, 7.0, 11.0]
         
        // let negativeNumbers = numbers.map({ -$0 })
         
        _ = numbers.map() {1.0/$0}
         
        _ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        _ = numbers.map { $0 * 10 }


   //     _ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   //     _ = numbers.filter{$0 % 2 == 0} //[2, 4, 6, 8, 10]
         
         
         
        _ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

         for i in 0..<numbers.count {
             let timesTen = numbers[i] * 10
             numbers[i] = timesTen
         }

         print(numbers) //[10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
         
         
         // массив в стринг
        _ = numbers.map {String($0)} // ["", "", ""] хвостовое замыкание
         
         
         
         
           
                   // как работает map
        
        let arr = [2, 3, 4, 5]
        
        func increment(by number: Int, to array: [Int]) -> [Int] {
            var result: [Int] = []
            for element in array {
                result.append(element + number)
            }
               
            return result
    }
        
        
        _ = increment(by: 2, to: arr) //[4, 5, 6, 7]
        
        
        
        
        func myMap( for array: [Int], _ transform: (Int) -> Int) -> [Int] {
            var result: [Int] = []
            for element in array {
                result.append(transform(element))
            }
               
            return result
            
         }
        
        _ =  myMap(for: arr){ $0 + 2 }
        
        _ =  myMap(for: arr){ $0 * $0 } // возводим в квадрат
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
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
    


