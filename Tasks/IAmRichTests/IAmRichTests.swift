//
//  IAmRichTests.swift
//  IAmRichTests
//
//  Created by Nail Sharipov on 18.02.2021.
//

import XCTest

class IAmRichTests: XCTestCase {

    typealias Person = IAmRich.Person
    typealias Link = IAmRich.Link
    
    var solution: IAmRichSolution = IAmRichEmptySolution()

    func test0() throws {
        let persons = [
            Person(id: 0, cache: 100),
            Person(id: 1, cache: 100),
            Person(id: 2, cache: 100),
            Person(id: 3, cache: 100),
            Person(id: 4, cache: 100)
        ]
        var links = [
            Link(a: 0, b: 1),
            Link(a: 1, b: 2),
            Link(a: 2, b: 3),
            Link(a: 3, b: 4)
        ]
        
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 200, persons: persons, links: links))
        
        links.append(Link(a: 0, b: 4))
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 200, persons: persons, links: links))
    }
    
    func test1() throws {
        let persons = [
            Person(id: 0, cache: 100),
            Person(id: 1, cache: 100),
            Person(id: 2, cache: 100),
            Person(id: 3, cache: 100),
            Person(id: 4, cache: 100)
        ]
        let links = [
            Link(a: 0, b: 1),
            Link(a: 2, b: 3)
        ]
        
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 145, persons: persons, links: links))
        XCTAssertTrue(solution.isPossibleGet(person: 3, cache: 145, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 4, cache: 145, persons: persons, links: links))
    }
    
    func test2() throws {
        let persons = [
            Person(id: 0, cache: 100),
            Person(id: 1, cache: 100),
            Person(id: 2, cache: 100),
            Person(id: 3, cache: 100)
        ]
        var links = [
            Link(a: 0, b: 1),
            Link(a: 0, b: 2),
            Link(a: 1, b: 2),
            Link(a: 1, b: 3),
            Link(a: 2, b: 3)
        ]
        
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 220, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 230, persons: persons, links: links))
        XCTAssertTrue(solution.isPossibleGet(person: 1, cache: 245, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 1, cache: 255, persons: persons, links: links))
        links.append(Link(a: 0, b: 3))
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 245, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 255, persons: persons, links: links))
    }
    
    
    func test3() throws {
        let persons = [
            Person(id: 0, cache: 100),
            Person(id: 1, cache: 100),
            Person(id: 2, cache: 100),
            Person(id: 3, cache: 100),
            Person(id: 4, cache: 100),
            Person(id: 5, cache: 100),
            Person(id: 6, cache: 100)
        ]
        let links = [
            Link(a: 0, b: 1),
            Link(a: 0, b: 2),
            Link(a: 0, b: 3),
            Link(a: 0, b: 4),
            Link(a: 1, b: 5),
            Link(a: 2, b: 5),
            Link(a: 3, b: 6),
            Link(a: 4, b: 6)
        ]
        
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 345, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 355, persons: persons, links: links))

        XCTAssertTrue(solution.isPossibleGet(person: 6, cache: 255, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 6, cache: 260, persons: persons, links: links))
    }
    
    func test4() throws {
        let persons = [
            Person(id: 0, cache: 100),
            Person(id: 1, cache: 100),
            Person(id: 2, cache: 100),
            Person(id: 3, cache: 100),
            Person(id: 4, cache: 100),
            Person(id: 5, cache: 100),
            Person(id: 6, cache: 100),
            Person(id: 7, cache: 100),
            Person(id: 8, cache: 100),
            Person(id: 9, cache: 100)
        ]
        let links = [
            Link(a: 0, b: 1),
            Link(a: 0, b: 9),
            Link(a: 1, b: 2),
            Link(a: 1, b: 3),
            Link(a: 3, b: 4),
            Link(a: 3, b: 7),
            Link(a: 3, b: 8),
            Link(a: 4, b: 5),
            Link(a: 4, b: 6),
            Link(a: 8, b: 9)
        ]
        
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 10, persons: persons, links: links))
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 100, persons: persons, links: links))
        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 310, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 315, persons: persons, links: links))

        XCTAssertTrue(solution.isPossibleGet(person: 6, cache: 255, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 6, cache: 260, persons: persons, links: links))
    }
    
    func test5() throws {
        let n = 1000_000
        var persons = [Person]()
        var links = [Link]()
        var j = n - 1
        for i in 0..<n {
            persons.append(Person(id: i, cache: 1000_0000_000))
            links.append(Link(a: i, b: j))
            j = i
        }

        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 29_999_999_000, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 30_000_001_000, persons: persons, links: links))
    }
    
    func test6() throws {
        let n = 1000_000
        var persons = [Person]()
        var links = [Link]()
        var j = n - 1
        for i in 0..<n {
            persons.append(Person(id: i, cache: 1000_0000_000))
            links.append(Link(a: i, b: j))
            
            if i % 2 == 1 {
                links.append(Link(a: i, b: (i + 2) % n))
            }
            j = i
        }

        XCTAssertTrue(solution.isPossibleGet(person: 0, cache: 39_999_999_000, persons: persons, links: links))
        XCTAssertFalse(solution.isPossibleGet(person: 0, cache: 40_000_001_000, persons: persons, links: links))
    }

}
