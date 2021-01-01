import XCTest

class TAUUITests: TAUUITestBase {

    func testExample() throws {
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["city"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
    
    func testThankYouMessage() {
        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("Moscow")
        app.textFields["city"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)    }

}
