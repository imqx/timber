import XCTest
import timber

final class fundamentalTests: XCTestCase {
  func testEnums() throws {
    let ja: TianGan = .JA
    let ex1: TianGan = TianGan(stringLiteral: "Hello")
    let ja_zi: JiaZi60 = .JA_ZI
    let ex2: JiaZi60 = JiaZi60(stringLiteral: "World")
    XCTAssertEqual(ja.rawValue, "JA")
    XCTAssertEqual(ja.isValid, true)
    XCTAssertEqual(ex1.isValid, false)
    XCTAssertEqual(ja_zi.rawValue, "JA_ZI")
    XCTAssertEqual(ja_zi.description, "甲子")
    XCTAssertEqual(ex2.isValid, false)
    XCTAssertEqual(ja_zi.isValid, true)
  }
  
  func testGroups() throws {
    
    let ss1: ShuangShan = .DN_WI
    let ss2: ShuangShan = ShuangShan(stringLiteral: "DN_WI")
    let ss3: ShuangShan = ShuangShan(stringLiteral: ss1.rawValue)
    XCTAssertEqual(ss1.eq(to: ss2), true)
    XCTAssertEqual(ss2.rawValue, ss3.rawValue)
    XCTAssertEqual(ss1 == ss3, true)
    
    let dn: TianGan = .DN
    XCTAssertEqual(ss2.gan8Wei4, dn)
    XCTAssertEqual(ss3.gan8Wei4 == dn, true)
    
    XCTAssertEqual("\(ss1)", "丁未")
    
    let ex1 = SanShan(stringLiteral: "XU_WU_YN")
    XCTAssertEqual(ex1.isValid, false)
    
    let bz1 = ShengChenBaZi(stringLiteral: "BN_YN__BN_SN__DN_YO__JI_YO")
    let bz2 = ShengChenBaZi(stringLiteral: "BN_YN__BN_SN__DN_YO__JI_YO")
    let ex2 = ShengChenBaZi(stringLiteral: "BN_YN_BN_SN_DN_YO_JI_YO")
    let ex3 = ShengChenBaZi(stringLiteral: "BN_YN__BN_SN__DN_YO__JI_GW")

    
    XCTAssertEqual(bz1, bz2)
    XCTAssertEqual(ex2.isValid, false)
    XCTAssertEqual(ex3.isValid, false)
    XCTAssertEqual(bz2.isValid, true)
    XCTAssertEqual("\(bz2)", "丙寅丙申丁酉己酉")
    XCTAssertEqual("\(bz1.month)", "丙申")
    
  }
  
  func testAliases() throws {
    
    let h1: HTLSSType = .h1
    let xh1: HeTuLuoShuShu = .h1
    
    XCTAssertEqual(h1, xh1)
    
  }
  
  func testUnions() throws {
    
    let l1: CS72LONGType = .DN_WI
    let l2: CS72LONGType = CS72LONGType(stringLiteral: "DN_WI")
    let l3: CS72LONGType = CS72LONGType(stringLiteral: "JI_CN")
    
    XCTAssertEqual(l1, l2)
    XCTAssertEqual(l1.isValid, true)
    XCTAssertEqual(l3.isValid, false)
    XCTAssertEqual(l1.rawValue, "DN_WI")
    XCTAssertEqual(l1.element, CS72LONGTypeEnum.jiaZi60(.DN_WI))
    XCTAssertEqual(l1.actualValue, JiaZi60.DN_WI)
    
  }
  
  func testDebugging() throws {
    
    let t: TianGan = "JA"
    print(t)
    
  }
  
}
