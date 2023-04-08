//
//  CodeSnippetsTests.swift
//  CodeSnippetsTests
//
//  Created by Michael Atkins-Spelling on 08/04/2023.
//

import XCTest
@testable import CodeSnippets

final class CodeSnippetsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testGoNuts() {
        print("\n\nGoing nuts...\n")
        
        let myStruct = MyConcreteStruct(string: "Hello world")
        print(myStruct.string)
        
        print("\nIts over!\n\n\n")
    }
    
    func testSerialization() {
        Serialization().test()
    }
    func testAssociatedTypes() {
        AssociatedTypes().test()
    }
    func testDateFormats() {
        DateFormats().test()
    }

}
