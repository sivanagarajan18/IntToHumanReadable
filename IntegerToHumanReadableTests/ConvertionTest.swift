//
//  ConvertionTest.swift
//  IntegerToHumanReadableTests
//
//  Created by Salzer on 08/07/21.
//

import XCTest
@testable import IntegerToHumanReadable

class ConvertionTest: XCTestCase {
    var intHumViewModel : IntToHumViewModel!
    override func setUp() {
        super.setUp()
        intHumViewModel = IntToHumViewModel()
    }
    
    override func tearDown() {
        intHumViewModel = nil
        super.tearDown()
    }
    
    func testIsValidNumber() throws  {
        XCTAssertNoThrow(try intHumViewModel.convert("99"))
    }

}
