import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest:TAUUITestBase {
    func testTAUWithEyesXCUI() {
        // Initialize the eyes SDK and set your private API key.
        let eyes = Eyes()

        eyes.apiKey = "NMhyuWt7Wtq1AiK97w94vZO63vgcmUBLwVvQGVA105G4zU110"

        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of Eyes XCUI SDK")

        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["enrollButton"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Plaese Enter City")

        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
}
