//
//  DateBuilderTests.swift
//  DateBuilderTests
//
//  Created by Keegan Rush on 2017/09/09.
//  Copyright © 2017 thecodedself. All rights reserved.
//

import XCTest
@testable import DateBuilder

class DateBuilderTests: XCTestCase {
    
    func testBuildingDateWithYear() {
        let expectedYear = 2017
        let dateWithYear = DateBuilder().year(expectedYear).build()
        assert(date: dateWithYear, hasYear: expectedYear)
    }
    
    func testBuildingDateWithMonth() {
        let expectedMonth = 11
        let dateWithMonth = DateBuilder().month(expectedMonth).build()
        assert(date: dateWithMonth, hasMonth: expectedMonth)
    }
    
    func testBuildingDateWithDay() {
        let expectedDay = 23
        let dateWithDay = DateBuilder().day(expectedDay).build()
        assert(date: dateWithDay, hasDay: expectedDay)
    }
    
    func testBuildingDateWithYearAndMonth() {
        let expectedYear = 2014
        let expectedMonth = 5
        let dateWithYearAndMonth = DateBuilder().year(expectedYear).month(expectedMonth).build()
        assert(date: dateWithYearAndMonth, hasYear: expectedYear, hasMonth: expectedMonth)
    }
    
    func testBuildingDateWithYearAndMonthAndDay() {
        let expectedYear = 1994
        let expectedMonth = 9
        let expectedDay = 13
        let dateWithYearAndMonthAndDay =
            DateBuilder().year(expectedYear).month(expectedMonth).day(expectedDay).build()
        assert(date: dateWithYearAndMonthAndDay,
               hasYear: expectedYear,
               hasMonth: expectedMonth,
               hasDay: expectedDay)
    }
    
    private func assert(date: Date,
                        hasYear year: Int? = nil,
                        hasMonth month: Int? = nil,
                        hasDay day: Int? = nil) {
        let componentsToMatch = DateComponents(year: year, month: month, day: day)
        XCTAssertTrue(Calendar.current.date(date, matchesComponents: componentsToMatch))
    }
    
}
