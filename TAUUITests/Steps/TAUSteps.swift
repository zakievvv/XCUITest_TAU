import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready"){ _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter \(city)"){ _ in
            TAUScreen.welcomeMessage.element.tap()
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I enrolled"){ _ in
            TAUScreen.enrollButton.element.tap()
        }
    }

    func thenIshouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I should See Thank You Message"){ _ in
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
