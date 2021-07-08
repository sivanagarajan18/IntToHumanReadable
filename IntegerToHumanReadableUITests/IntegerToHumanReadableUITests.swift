//
//  IntegerToHumanReadableUITests.swift
//  IntegerToHumanReadableUITests
//
//  Created by Salzer on 07/07/21.
//

import XCTest

class IntegerToHumanReadableUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let onlyIntegersPleaseTextField = app.textFields["Only Integers please"]
        onlyIntegersPleaseTextField.tap()
        XCTAssertEqual(app.textFields.count, 1)
                XCTAssertEqual(app.buttons.count, 1)
        onlyIntegersPleaseTextField.tap()
        onlyIntegersPleaseTextField.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        key.tap()
        key.tap()
        let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.keys["9"]/*[[".keyboards.keys[\"9\"]",".keys[\"9\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCUIApplication()/*@START_MENU_TOKEN@*/.staticTexts["Convert"]/*[[".buttons[\"Convert\"].staticTexts[\"Convert\"]",".staticTexts[\"Convert\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
}
