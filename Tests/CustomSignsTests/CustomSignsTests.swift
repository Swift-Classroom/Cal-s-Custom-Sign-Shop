//
//  Test.swift
//  CustomSigns
//
//  Created by Gianluca Orpello on 21/10/24.
//

import Testing

struct TaskStringConstantsTest {

    @Test func testBirthday() async throws {
        #expect(birthday == "Birthday")
    }
    
    @Test func testValentine() async throws {
        #expect(valentine == "Valentine's Day")
    }
    
    @Test func testAnniversary() async throws {
        #expect(anniversary == "Anniversary")
    }

}

struct TaskCharacterConstantsTest {
    @Test func testSpace() async throws {
        let result: Character = " "
        #expect(space == result)
    }
    
    @Test func testExclamation() async throws {
        let result: Character = "!"
        #expect(exclamation == result)
    }
}

struct TaskBuildSignTest {
    @Test func testBuildSign() async throws {
        #expect(
            buildSign(for: valentine, name: "Hikaru") == "Happy Valentine's Day Hikaru!"
        )
    }
    
    @Test func testBuildSignNoName() async throws {
        #expect(
            buildSign(for: birthday, name: "") == "Happy Birthday !"
        )
    }
    
    @Test func testBuildSignAnniversary() async throws {
        #expect(
            buildSign(for: anniversary, name: "Bob") == "Happy Anniversary Bob!"
        )
    }
}

struct TaskGraduationForTest {
    @Test func testGraduation() throws {
        #expect(
            graduationFor(name: "Isabel", year: 1988) == "Congratulations Isabel!\nClass of 1988"
        )
    }
    
    @Test func testGraduation2005() throws {
        #expect(
            graduationFor(name: "Jeremy", year: 2005) == "Congratulations Jeremy!\nClass of 2005"
        )
    }
}

struct TaskCostOfTest {
    @Test func testCostOfSign() throws {
        #expect(
            costOf(sign: graduationFor(name: "Isabel", year: 1988)) == 94
        )
        XCTAssertEqual(costOf(sign: graduationFor(name: "Isabel", year: 1988)), 94)
    }
    
    @Test func testBuiltSign() throws {
        #expect(
            costOf(sign: buildSign(for: anniversary, name: "Bob")) == 64
        )
    }
    
    @Test func testCostOfSignEmpty() throws {
        #expect(
            costOf(sign: "") == 20
        )
    }
}
