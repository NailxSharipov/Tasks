//
//  IAmRichSolution.swift
//  Tasks
//
//  Created by Nail Sharipov on 18.02.2021.
//

/*
Есть группа людей, каждый из них является чьим то другом, или другом друга или другом друга друга и тд
Каждый из них имеет N - сумму денег на руках. Каждый готов дать своему другу в долг половину своих денег, если это друг друга то только 1/4 от своей наличности, если друга друга друг то 1/8, ... 1/16, 1/32 и тд.
Требуется определить, может ли указанный человек собрать X денег?

Например:

 A имеет 100
 B имеет 100
 C имеет 100
 D имеет 100
 
 1) A -- B -- C -- D -- E
 
 Сможет ли A собрать 200?
 
 SumA = 100 + 50 + 25 + 12.5 + 6.25 = 193.75, Ответ: нет

 2) A -- B -- C -- D -- E -- A
 
 Сможет ли A собрать 200?
 
 SumA = 100 + 50 + 25 + 25 + 50 = 250, Ответ: да
 
*/

struct IAmRich {
    struct Person {
        
        typealias Id = Int
        
        let id: Id
        let cache: Double
    }

    struct Link {
        let a: Person.Id
        let b: Person.Id
    }
}

protocol IAmRichSolution {

    
    /// Узнать возможно ли человеку получить требуемую сумму денег
    /// - Parameters:
    ///   - person: id пользователя, для простоты пользователи будут иметь id oт 0..<persons.count
    ///   - cache: сумма которую надо набрать
    ///   - persons: все люди в группе, без повторений
    ///   - links: связи прямых друзей, без повторений
    func isPossibleGet(person: IAmRich.Person.Id, cache: Double, persons: [IAmRich.Person], links: [IAmRich.Link]) -> Bool
    
}
