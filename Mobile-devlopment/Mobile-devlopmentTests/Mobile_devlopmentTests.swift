//
//  Mobile_devlopmentTests.swift
//  Mobile-devlopmentTests
//
//  Created by Vincent Marguet on 29/01/2024.
//

import XCTest
@testable import Mobile_devlopment

final class Mobile_devlopmentTests: XCTestCase {

    func testIsFirstDateStringBeforeSecond() throws {
        let helper = Helper()
        
        XCTAssertTrue(helper.isFirstDateStringBeforeSecond(firstDateString: "2022-01-01T12:00:00.000Z", secondDateString: "2022-01-02T12:00:00.000Z"))
        
        XCTAssertFalse(helper.isFirstDateStringBeforeSecond(firstDateString: "InvalidDate", secondDateString: "2022-01-02T12:00:00.000Z"))
        XCTAssertFalse(helper.isFirstDateStringBeforeSecond(firstDateString: "2022-01-01T12:00:00.000Z", secondDateString: "InvalidDate"))
    }
    
    func testFormatDate() {
        let helper = Helper()
        
        XCTAssertEqual(helper.formatDate(dateStr: "2022-01-01T12:00:00.000Z"), "01-01-2022 @ 13:00:00")
        
    }

}
