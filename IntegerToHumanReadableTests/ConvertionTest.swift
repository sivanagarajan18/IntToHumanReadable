//
//  ConvertionTest.swift
//  IntegerToHumanReadableTests
//
//  Created by Salzer on 08/07/21.
//

import XCTest
@testable import IntegerToHumanReadable

class ConvertionTest: XCTestCase {
    var intHumViewModel : IntHumViewModel!
    override func setUp() {
        super.setUp()
        intHumViewModel = IntHumViewModel()
    }
    
    override func tearDown() {
        intHumViewModel = nil
        super.tearDown()
    }
    
    func testIsValidNumber() throws  {
        intHumViewModel.numValue = "12"
        XCTAssertNoThrow(try intHumViewModel.convert())
    }

}
