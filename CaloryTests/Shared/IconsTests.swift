import Testing
import UIKit
@testable import Calory

struct IconsTests {
    @Test func allIconsExist() {
        for name in String.allIcons {
            #expect(UIImage(systemName: name) != nil, "Missing  SF symbol: \(name)")
        }
    }
}
