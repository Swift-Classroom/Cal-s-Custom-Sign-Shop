import XCTest

@testable import CustomSigns

class TaskStringConstants: XCTestCase {
  func testBirthday() {
    XCTAssertEqual(birthday, "Birthday")
  }

  func testValentine() throws {
    
    XCTAssertEqual(valentine, "Valentine's Day")
  }

  func testAnniversary() throws {
    
    XCTAssertEqual(anniversary, "Anniversary")
  }
}

class TaskCharacterConstants: XCTestCase {
  func testSpace() throws {
    
    XCTAssertEqual(space, " " as Character)
  }

  func testExclamation() throws {
    
    XCTAssertEqual(exclamation, "!" as Character)
  }
}

class TaskBuildSign: XCTestCase {
  func testBuildSign() throws {
    
    XCTAssertEqual(buildSign(for: valentine, name: "Hikaru"), "Happy Valentine's Day Hikaru!")
  }

  func testBuildSignNoName() throws {
    
    XCTAssertEqual(buildSign(for: birthday, name: ""), "Happy Birthday !")
  }

  func testBuildSignAnniversary() throws {
    
    XCTAssertEqual(buildSign(for: anniversary, name: "Bob"), "Happy Anniversary Bob!")
  }
}

class TaskGraduationFor: XCTestCase {
  func testGraduation() throws {
    
    XCTAssertEqual(
      graduationFor(name: "Isabel", year: 1988), "Congratulations Isabel!\nClass of 1988")
  }

  func testGraduation2005() throws {
    
    XCTAssertEqual(
      graduationFor(name: "Jeremy", year: 2005), "Congratulations Jeremy!\nClass of 2005")
  }
}

class TaskCostOf: XCTestCase {
  func testCostOfSign() throws {
    
    XCTAssertEqual(costOf(sign: graduationFor(name: "Isabel", year: 1988)), 94)
  }

  func testBuiltSign() throws {
    
    XCTAssertEqual(costOf(sign: buildSign(for: anniversary, name: "Bob")), 64)
  }

  func testCostOfSignEmpty() throws {
    
    XCTAssertEqual(costOf(sign: ""), 20)
  }
}
