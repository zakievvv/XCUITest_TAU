import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    var eyes = Eyes()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "NMhyuWt7Wtq1AiK97w94vZO63vgcmUBLwVvQGVA105G4zU110"
    }

    override func tearDown() {
        super.tearDown()
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
    
    func XCTAsyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
