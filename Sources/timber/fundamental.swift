
// This file is generated by Timber Generator
// Name: bundle/swift/timber/Sources/timber/fundamental.swift
// Version: 0.5.1
// Time: 2021/10/5
// Parser: v1.3.1 @Tue Sep 28 2021 08:00:00 GMT+0800 (中国标准时间)

import Foundation

public protocol Literable: Hashable, ExpressibleByStringLiteral, CustomStringConvertible {
  var rawValue: String { get }
  var typeName: String { get }
  var description: String { get }
  func eq<T: Literable>(to other: T) -> Bool
}

// "Unexpected"

public class LiteralType: Literable {
  public typealias StringLiteralType = String
  
  public var rawValue: String = "Unexpected"
  public var typeName: String {
    String(describing: self)
  }
  public var isValid: Bool {
    return self.rawValue != "Unexpected"
  }
  internal func validate() -> Bool {
    return self.validate(raw: self.rawValue)
  }
  // Must override in subclass
  internal func validate(raw: String) -> Bool {
    return true
  }
  
  public static func == (lhs: LiteralType, rhs: LiteralType) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
  public func eq<T>(to other: T) -> Bool where T : Literable {
    return self.rawValue == other.rawValue
  }
  public func hash(into hasher: inout Hasher) {
    hasher.combine(self.rawValue)
  }
  public required init(stringLiteral rawValue: String) {
    if validate(raw: rawValue) {
      self.rawValue = rawValue
    } else {
      self.rawValue = "Unexpected"
    }
  }
  public var description: String {
    _t(self.rawValue)
  }
}




/**
 * [Enum] 十天干
 * 
 * @public
 */
public class TianGan: LiteralType {
  public static let JA: TianGan = "JA"
  public static let YI: TianGan = "YI"
  public static let BN: TianGan = "BN"
  public static let DN: TianGan = "DN"
  public static let WO: TianGan = "WO"
  public static let JI: TianGan = "JI"
  public static let GN: TianGan = "GN"
  public static let XN: TianGan = "XN"
  public static let RN: TianGan = "RN"
  public static let GW: TianGan = "GW"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["JA","YI","BN","DN","WO","JI","GN","XN","RN","GW"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 八干
 * 
 * @public
 */
public class Gan8: LiteralType {
  public static let JA: Gan8 = "JA"
  public static let YI: Gan8 = "YI"
  public static let BN: Gan8 = "BN"
  public static let DN: Gan8 = "DN"
  public static let GN: Gan8 = "GN"
  public static let XN: Gan8 = "XN"
  public static let RN: Gan8 = "RN"
  public static let GW: Gan8 = "GW"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["JA","YI","BN","DN","GN","XN","RN","GW"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 十二地支
 * 
 * @public
 */
public class DiZhi: LiteralType {
  public static let ZI: DiZhi = "ZI"
  public static let CO: DiZhi = "CO"
  public static let YN: DiZhi = "YN"
  public static let MO: DiZhi = "MO"
  public static let CN: DiZhi = "CN"
  public static let SI: DiZhi = "SI"
  public static let WU: DiZhi = "WU"
  public static let WI: DiZhi = "WI"
  public static let SN: DiZhi = "SN"
  public static let YO: DiZhi = "YO"
  public static let XU: DiZhi = "XU"
  public static let HI: DiZhi = "HI"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["ZI","CO","YN","MO","CN","SI","WU","WI","SN","YO","XU","HI"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 五行
 * 
 * @public
 */
public class WuXing: LiteralType {
  public static let JIN: WuXing = "JIN"
  public static let MOO: WuXing = "MOO"
  public static let SUI: WuXing = "SUI"
  public static let HUO: WuXing = "HUO"
  public static let TUU: WuXing = "TUU"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["JIN","MOO","SUI","HUO","TUU"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 八卦
 * 
 * @public
 */
public class BaGua: LiteralType {
  public static let KANN: BaGua = "KANN"
  public static let ZHEN: BaGua = "ZHEN"
  public static let LIEN: BaGua = "LIEN"
  public static let DUEI: BaGua = "DUEI"
  public static let QIAN: BaGua = "QIAN"
  public static let KUNN: BaGua = "KUNN"
  public static let GENG: BaGua = "GENG"
  public static let XUEN: BaGua = "XUEN"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["KANN","ZHEN","LIEN","DUEI","QIAN","KUNN","GENG","XUEN"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 四维
 * 
 * @public
 */
public class Wei4: LiteralType {
  public static let QIAN: Wei4 = "QIAN"
  public static let KUNN: Wei4 = "KUNN"
  public static let GENG: Wei4 = "GENG"
  public static let XUEN: Wei4 = "XUEN"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["QIAN","KUNN","GENG","XUEN"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 八卦与中五宫
 * 
 * @public
 */
public class BaGuaWithZhong: LiteralType {
  public static let KANN: BaGuaWithZhong = "KANN"
  public static let ZHEN: BaGuaWithZhong = "ZHEN"
  public static let LIEN: BaGuaWithZhong = "LIEN"
  public static let DUEI: BaGuaWithZhong = "DUEI"
  public static let QIAN: BaGuaWithZhong = "QIAN"
  public static let KUNN: BaGuaWithZhong = "KUNN"
  public static let GENG: BaGuaWithZhong = "GENG"
  public static let XUEN: BaGuaWithZhong = "XUEN"
  public static let ZONG: BaGuaWithZhong = "ZONG"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["KANN","ZHEN","LIEN","DUEI","QIAN","KUNN","GENG","XUEN","ZONG"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 戴九履一、左三右七、二四为肩、六八为足、五居正中
 * 
 * @public
 */
public class HeTuLuoShuShu: LiteralType {
  public static let h1: HeTuLuoShuShu = "h1"
  public static let h2: HeTuLuoShuShu = "h2"
  public static let h3: HeTuLuoShuShu = "h3"
  public static let h4: HeTuLuoShuShu = "h4"
  public static let h5: HeTuLuoShuShu = "h5"
  public static let h6: HeTuLuoShuShu = "h6"
  public static let h7: HeTuLuoShuShu = "h7"
  public static let h8: HeTuLuoShuShu = "h8"
  public static let h9: HeTuLuoShuShu = "h9"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["h1","h2","h3","h4","h5","h6","h7","h8","h9"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 戴九履一、左三右七、二四为肩、六八为足、五居正中
 * —— 不含5
 * 
 * @public
 */
public class HeTuLuoShuShuExcept5: LiteralType {
  public static let h1: HeTuLuoShuShuExcept5 = "h1"
  public static let h2: HeTuLuoShuShuExcept5 = "h2"
  public static let h3: HeTuLuoShuShuExcept5 = "h3"
  public static let h4: HeTuLuoShuShuExcept5 = "h4"
  public static let h6: HeTuLuoShuShuExcept5 = "h6"
  public static let h7: HeTuLuoShuShuExcept5 = "h7"
  public static let h8: HeTuLuoShuShuExcept5 = "h8"
  public static let h9: HeTuLuoShuShuExcept5 = "h9"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["h1","h2","h3","h4","h6","h7","h8","h9"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 九星七曜 - 九星，含左辅、右弼
 * 
 * @remarks
 * 辅（辅弼）、破（破军）、贞（廉贞）、武（武曲）、巨（巨门）、文（文曲）、禄（禄存）、贪（贪狼）
 * 
 * @public
 */
public class JiuXing: LiteralType {
  public static let pj: JiuXing = "pj"
  public static let lz: JiuXing = "lz"
  public static let uq: JiuXing = "uq"
  public static let jm: JiuXing = "jm"
  public static let nq: JiuXing = "nq"
  public static let lc: JiuXing = "lc"
  public static let tl: JiuXing = "tl"
  public static let zf: JiuXing = "zf"
  public static let yb: JiuXing = "yb"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["pj","lz","uq","jm","nq","lc","tl","zf","yb"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 九星七曜 - 七曜，不含：辅（辅弼）
 * 
 * @remarks
 * 破（破军）、贞（廉贞）、武（武曲）、巨（巨门）、文（文曲）、禄（禄存）、贪（贪狼）
 * 
 * @public
 */
public class QiYao: LiteralType {
  public static let pj: QiYao = "pj"
  public static let lz: QiYao = "lz"
  public static let uq: QiYao = "uq"
  public static let jm: QiYao = "jm"
  public static let nq: QiYao = "nq"
  public static let lc: QiYao = "lc"
  public static let tl: QiYao = "tl"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["pj","lz","uq","jm","nq","lc","tl"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 九星七曜 - 七曜含：辅（辅弼）
 * 
 * @remarks
 * 辅（辅弼）、破（破军）、贞（廉贞）、武（武曲）、巨（巨门）、文（文曲）、禄（禄存）、贪（贪狼）
 * 
 * @public
 */
public class JiuXingIn8: LiteralType {
  public static let pj: JiuXingIn8 = "pj"
  public static let lz: JiuXingIn8 = "lz"
  public static let uq: JiuXingIn8 = "uq"
  public static let jm: JiuXingIn8 = "jm"
  public static let nq: JiuXingIn8 = "nq"
  public static let lc: JiuXingIn8 = "lc"
  public static let tl: JiuXingIn8 = "tl"
  public static let fb: JiuXingIn8 = "fb"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["pj","lz","uq","jm","nq","lc","tl","fb"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 八宅方位，福绝天祸六延五生
 * 
 * @remarks
 * 生气、天医、祸害、五鬼、绝命、六煞、伏位、延年
 * 
 * @public
 */
public class BaZhaiWei: LiteralType {
  public static let sq: BaZhaiWei = "sq"
  public static let ty: BaZhaiWei = "ty"
  public static let hh: BaZhaiWei = "hh"
  public static let wg: BaZhaiWei = "wg"
  public static let jn: BaZhaiWei = "jn"
  public static let ls: BaZhaiWei = "ls"
  public static let fw: BaZhaiWei = "fw"
  public static let yn: BaZhaiWei = "yn"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["sq","ty","hh","wg","jn","ls","fw","yn"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 阴阳
 * 
 * @public
 */
public class YinYan: LiteralType {
  public static let Yin: YinYan = "Yin"
  public static let Yan: YinYan = "Yan"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["Yin","Yan"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 八干四维
 * 
 * @public
 */
public class Gan8Wei4: LiteralType {
  public static let JA: Gan8Wei4 = "JA"
  public static let YI: Gan8Wei4 = "YI"
  public static let BN: Gan8Wei4 = "BN"
  public static let DN: Gan8Wei4 = "DN"
  public static let GN: Gan8Wei4 = "GN"
  public static let XN: Gan8Wei4 = "XN"
  public static let RN: Gan8Wei4 = "RN"
  public static let GW: Gan8Wei4 = "GW"
  public static let QIAN: Gan8Wei4 = "QIAN"
  public static let KUNN: Gan8Wei4 = "KUNN"
  public static let GENG: Gan8Wei4 = "GENG"
  public static let XUEN: Gan8Wei4 = "XUEN"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["JA","YI","BN","DN","GN","XN","RN","GW","QIAN","KUNN","GENG","XUEN"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 二十四山
 * 
 * @public
 */
public class Shan24: LiteralType {
  public static let JA: Shan24 = "JA"
  public static let YI: Shan24 = "YI"
  public static let BN: Shan24 = "BN"
  public static let DN: Shan24 = "DN"
  public static let GN: Shan24 = "GN"
  public static let XN: Shan24 = "XN"
  public static let RN: Shan24 = "RN"
  public static let GW: Shan24 = "GW"
  public static let QIAN: Shan24 = "QIAN"
  public static let KUNN: Shan24 = "KUNN"
  public static let GENG: Shan24 = "GENG"
  public static let XUEN: Shan24 = "XUEN"
  public static let ZI: Shan24 = "ZI"
  public static let CO: Shan24 = "CO"
  public static let YN: Shan24 = "YN"
  public static let MO: Shan24 = "MO"
  public static let CN: Shan24 = "CN"
  public static let SI: Shan24 = "SI"
  public static let WU: Shan24 = "WU"
  public static let WI: Shan24 = "WI"
  public static let SN: Shan24 = "SN"
  public static let YO: Shan24 = "YO"
  public static let XU: Shan24 = "XU"
  public static let HI: Shan24 = "HI"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["JA","YI","BN","DN","GN","XN","RN","GW","QIAN","KUNN","GENG","XUEN","ZI","CO","YN","MO","CN","SI","WU","WI","SN","YO","XU","HI"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 长生十二宫
 * 
 * @remarks 
 * 长生、沐浴、冠带、临官、帝旺、衰、病、死、墓、绝、胎、养
 *   
 * 
 * @public
 */
public class ChangSheng12: LiteralType {
  public static let ChS: ChangSheng12 = "ChS"
  public static let MuY: ChangSheng12 = "MuY"
  public static let GnD: ChangSheng12 = "GnD"
  public static let LnG: ChangSheng12 = "LnG"
  public static let DiW: ChangSheng12 = "DiW"
  public static let SuI: ChangSheng12 = "SuI"
  public static let BnG: ChangSheng12 = "BnG"
  public static let SiS: ChangSheng12 = "SiS"
  public static let MoU: ChangSheng12 = "MoU"
  public static let JuE: ChangSheng12 = "JuE"
  public static let TaI: ChangSheng12 = "TaI"
  public static let YnG: ChangSheng12 = "YnG"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["ChS","MuY","GnD","LnG","DiW","SuI","BnG","SiS","MoU","JuE","TaI","YnG"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 罗盘各层名称
 * 
 * @beta
 */
public class LuopanLayerName: LiteralType {
  public static let DPZZ: LuopanLayerName = "DPZZ"
  public static let RPZZ: LuopanLayerName = "RPZZ"
  public static let TPFZ: LuopanLayerName = "TPFZ"
  public static let XTBG: LuopanLayerName = "XTBG"
  public static let HTBG: LuopanLayerName = "HTBG"
  public static let HTLSS: LuopanLayerName = "HTLSS"
  public static let CS72LONG: LuopanLayerName = "CS72LONG"
  public static let BSHQ: LuopanLayerName = "BSHQ"
  public static let SH24JS: LuopanLayerName = "SH24JS"
  public static let TD60LONG: LuopanLayerName = "TD60LONG"
  public static let DPZZ120FJ: LuopanLayerName = "DPZZ120FJ"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["DPZZ","RPZZ","TPFZ","XTBG","HTBG","HTLSS","CS72LONG","BSHQ","SH24JS","TD60LONG","DPZZ120FJ"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Enum] 性别
 * 
 * @public
 */
public class Gender: LiteralType {
  public static let M: Gender = "M"
  public static let F: Gender = "F"
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
  }
  public override func validate(raw: String) -> Bool {
    if ["M","F"].contains(raw) {
      return true
    }
    return false
  }
}

/**
 * [Group] 六十甲子结构类型
 * 
 * @public
 */
public class JiaZi60: LiteralType {
  private let length = 2
  private var _tianGan: TianGan = "Unexpected"
  public var tianGan: TianGan { self._tianGan }
  private var _diZhi: DiZhi = "Unexpected"
  public var diZhi: DiZhi { self._diZhi }
  public static let JA_ZI: JiaZi60 = "JA_ZI"
  public static let YI_CO: JiaZi60 = "YI_CO"
  public static let BN_YN: JiaZi60 = "BN_YN"
  public static let DN_MO: JiaZi60 = "DN_MO"
  public static let WO_CN: JiaZi60 = "WO_CN"
  public static let JI_SI: JiaZi60 = "JI_SI"
  public static let GN_WU: JiaZi60 = "GN_WU"
  public static let XN_WI: JiaZi60 = "XN_WI"
  public static let RN_SN: JiaZi60 = "RN_SN"
  public static let GW_YO: JiaZi60 = "GW_YO"
  public static let JA_XU: JiaZi60 = "JA_XU"
  public static let YI_HI: JiaZi60 = "YI_HI"
  public static let BN_ZI: JiaZi60 = "BN_ZI"
  public static let DN_CO: JiaZi60 = "DN_CO"
  public static let WO_YN: JiaZi60 = "WO_YN"
  public static let JI_MO: JiaZi60 = "JI_MO"
  public static let GN_CN: JiaZi60 = "GN_CN"
  public static let XN_SI: JiaZi60 = "XN_SI"
  public static let RN_WU: JiaZi60 = "RN_WU"
  public static let GW_WI: JiaZi60 = "GW_WI"
  public static let JA_SN: JiaZi60 = "JA_SN"
  public static let YI_YO: JiaZi60 = "YI_YO"
  public static let BN_XU: JiaZi60 = "BN_XU"
  public static let DN_HI: JiaZi60 = "DN_HI"
  public static let WO_ZI: JiaZi60 = "WO_ZI"
  public static let JI_CO: JiaZi60 = "JI_CO"
  public static let GN_YN: JiaZi60 = "GN_YN"
  public static let XN_MO: JiaZi60 = "XN_MO"
  public static let RN_CN: JiaZi60 = "RN_CN"
  public static let GW_SI: JiaZi60 = "GW_SI"
  public static let JA_WU: JiaZi60 = "JA_WU"
  public static let YI_WI: JiaZi60 = "YI_WI"
  public static let BN_SN: JiaZi60 = "BN_SN"
  public static let DN_YO: JiaZi60 = "DN_YO"
  public static let WO_XU: JiaZi60 = "WO_XU"
  public static let JI_HI: JiaZi60 = "JI_HI"
  public static let GN_ZI: JiaZi60 = "GN_ZI"
  public static let XN_CO: JiaZi60 = "XN_CO"
  public static let RN_YN: JiaZi60 = "RN_YN"
  public static let GW_MO: JiaZi60 = "GW_MO"
  public static let JA_CN: JiaZi60 = "JA_CN"
  public static let YI_SI: JiaZi60 = "YI_SI"
  public static let BN_WU: JiaZi60 = "BN_WU"
  public static let DN_WI: JiaZi60 = "DN_WI"
  public static let WO_SN: JiaZi60 = "WO_SN"
  public static let JI_YO: JiaZi60 = "JI_YO"
  public static let GN_XU: JiaZi60 = "GN_XU"
  public static let XN_HI: JiaZi60 = "XN_HI"
  public static let RN_ZI: JiaZi60 = "RN_ZI"
  public static let GW_CO: JiaZi60 = "GW_CO"
  public static let JA_YN: JiaZi60 = "JA_YN"
  public static let YI_MO: JiaZi60 = "YI_MO"
  public static let BN_CN: JiaZi60 = "BN_CN"
  public static let DN_SI: JiaZi60 = "DN_SI"
  public static let WO_WU: JiaZi60 = "WO_WU"
  public static let JI_WI: JiaZi60 = "JI_WI"
  public static let GN_SN: JiaZi60 = "GN_SN"
  public static let XN_YO: JiaZi60 = "XN_YO"
  public static let RN_XU: JiaZi60 = "RN_XU"
  public static let GW_HI: JiaZi60 = "GW_HI"
  public override func validate(raw: String) -> Bool {
    if ["JA_ZI","YI_CO","BN_YN","DN_MO","WO_CN","JI_SI","GN_WU","XN_WI","RN_SN","GW_YO","JA_XU","YI_HI","BN_ZI","DN_CO","WO_YN","JI_MO","GN_CN","XN_SI","RN_WU","GW_WI","JA_SN","YI_YO","BN_XU","DN_HI","WO_ZI","JI_CO","GN_YN","XN_MO","RN_CN","GW_SI","JA_WU","YI_WI","BN_SN","DN_YO","WO_XU","JI_HI","GN_ZI","XN_CO","RN_YN","GW_MO","JA_CN","YI_SI","BN_WU","DN_WI","WO_SN","JI_YO","GN_XU","XN_HI","RN_ZI","GW_CO","JA_YN","YI_MO","BN_CN","DN_SI","WO_WU","JI_WI","GN_SN","XN_YO","RN_XU","GW_HI"].contains(raw) {
      return true
    }
    return false
  }
  public func compose(_ tianGan: TianGan, _ diZhi: DiZhi) {
    self._tianGan = tianGan
    self._diZhi = diZhi
  }
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
    if self.isValid {
      let components = rawValue.components(separatedBy: "_")
      self.compose(TianGan(stringLiteral: components[0]), DiZhi(stringLiteral: components[1]))
    }
  }
}


/**
 * [Group] 二十四山双山组合
 * 
 * @public
 */
public class ShuangShan: LiteralType {
  private let length = 2
  private var _gan8Wei4: Gan8Wei4 = "Unexpected"
  public var gan8Wei4: Gan8Wei4 { self._gan8Wei4 }
  private var _diZhi: DiZhi = "Unexpected"
  public var diZhi: DiZhi { self._diZhi }
  public static let RN_ZI: ShuangShan = "RN_ZI"
  public static let GW_CO: ShuangShan = "GW_CO"
  public static let GENG_YN: ShuangShan = "GENG_YN"
  public static let JA_MO: ShuangShan = "JA_MO"
  public static let YI_CN: ShuangShan = "YI_CN"
  public static let XUEN_SI: ShuangShan = "XUEN_SI"
  public static let BN_WU: ShuangShan = "BN_WU"
  public static let DN_WI: ShuangShan = "DN_WI"
  public static let KUNN_SN: ShuangShan = "KUNN_SN"
  public static let GN_YO: ShuangShan = "GN_YO"
  public static let XN_XU: ShuangShan = "XN_XU"
  public static let QIAN_HI: ShuangShan = "QIAN_HI"
  public override func validate(raw: String) -> Bool {
    if ["RN_ZI","GW_CO","GENG_YN","JA_MO","YI_CN","XUEN_SI","BN_WU","DN_WI","KUNN_SN","GN_YO","XN_XU","QIAN_HI"].contains(raw) {
      return true
    }
    return false
  }
  public func compose(_ gan8Wei4: Gan8Wei4, _ diZhi: DiZhi) {
    self._gan8Wei4 = gan8Wei4
    self._diZhi = diZhi
  }
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
    if self.isValid {
      let components = rawValue.components(separatedBy: "_")
      self.compose(Gan8Wei4(stringLiteral: components[0]), DiZhi(stringLiteral: components[1]))
    }
  }
}


/**
 * [Group] 二十四山三山组合
 * 
 * @public
 */
public class SanShan: LiteralType {
  private let length = 3
  private var _dee: Shan24 = "Unexpected"
  public var dee: Shan24 { self._dee }
  private var _tin: Shan24 = "Unexpected"
  public var tin: Shan24 { self._tin }
  private var _ren: Shan24 = "Unexpected"
  public var ren: Shan24 { self._ren }
  public static let RN_ZI_GW: SanShan = "RN_ZI_GW"
  public static let CO_GENG_YN: SanShan = "CO_GENG_YN"
  public static let JA_MO_YI: SanShan = "JA_MO_YI"
  public static let CN_XUEN_SI: SanShan = "CN_XUEN_SI"
  public static let BN_WU_DN: SanShan = "BN_WU_DN"
  public static let WI_KUNN_SN: SanShan = "WI_KUNN_SN"
  public static let GN_YO_XN: SanShan = "GN_YO_XN"
  public static let XU_QIAN_HI: SanShan = "XU_QIAN_HI"
  public override func validate(raw: String) -> Bool {
    if ["RN_ZI_GW","CO_GENG_YN","JA_MO_YI","CN_XUEN_SI","BN_WU_DN","WI_KUNN_SN","GN_YO_XN","XU_QIAN_HI"].contains(raw) {
      return true
    }
    return false
  }
  public func compose(_ dee: Shan24, _ tin: Shan24, _ ren: Shan24) {
    self._dee = dee
    self._tin = tin
    self._ren = ren
  }
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
    if self.isValid {
      let components = rawValue.components(separatedBy: "_")
      self.compose(Shan24(stringLiteral: components[0]), Shan24(stringLiteral: components[1]), Shan24(stringLiteral: components[2]))
    }
  }
}


/**
 * [Group] 生辰八字
 * 
 * @public
 */
public class ShengChenBaZi: LiteralType {
  private let length = 4
  private var _year: JiaZi60 = "Unexpected"
  public var year: JiaZi60 { self._year }
  private var _month: JiaZi60 = "Unexpected"
  public var month: JiaZi60 { self._month }
  private var _day: JiaZi60 = "Unexpected"
  public var day: JiaZi60 { self._day }
  private var _time: JiaZi60 = "Unexpected"
  public var time: JiaZi60 { self._time }
  public override func validate(raw: String) -> Bool {
    let components = raw.components(separatedBy: "__")
    guard components.count == length else {
      return false
    }
    guard JiaZi60(stringLiteral: components[0]).isValid else {
      return false
    }
    guard JiaZi60(stringLiteral: components[1]).isValid else {
      return false
    }
    guard JiaZi60(stringLiteral: components[2]).isValid else {
      return false
    }
    guard JiaZi60(stringLiteral: components[3]).isValid else {
      return false
    }
    return true
  }
  public func compose(_ year: JiaZi60, _ month: JiaZi60, _ day: JiaZi60, _ time: JiaZi60) {
    self._year = year
    self._month = month
    self._day = day
    self._time = time
  }
  public required init(stringLiteral rawValue: String) {
    super.init(stringLiteral: rawValue)
    if self.isValid {
      let components = rawValue.components(separatedBy: "__")
      self.compose(JiaZi60(stringLiteral: components[0]), JiaZi60(stringLiteral: components[1]), JiaZi60(stringLiteral: components[2]), JiaZi60(stringLiteral: components[3]))
    }
  }
}


/**
 * [Alias] 地盘正针指向类型
 * 
 * @public
 */
public typealias DPZZType = Shan24


/**
 * [Alias] 人盘中针指向类型
 * 
 * @public
 */
public typealias RPZZType = Shan24


/**
 * [Alias] 天盘缝针指向类型
 * 
 * @public
 */
public typealias TPFZType = Shan24


/**
 * [Alias] 先天八卦
 * 
 * @public
 */
public typealias XTBGType = BaGua


/**
 * [Alias] 后天八卦
 * 
 * @public
 */
public typealias HTBGType = BaGua


/**
 * [Alias] 河图洛书数
 * 
 * @beta
 */
public typealias HTLSSType = HeTuLuoShuShu


/**
 * [Alias] 八煞黄泉
 * 
 * @public
 */
public typealias BSHQType = DiZhi


/**
 * [Alias] 二十四山劫煞
 * 
 * @public
 */
public typealias SH24JSType = Shan24


/**
 * [Alias] 透地六十龙
 * 
 * @public
 */
public typealias TD60LONGType = JiaZi60


/**
 * [Alias] 正针百二十分金类型
 * 
 * @public
 */
public typealias DPZZ120FJType = JiaZi60


/**
 * [Alias] 命卦 - 依据出生年计算
 * 
 * @beta
 */
public typealias MingGua = BaGua


/**
 * [Union] 穿山七十二龙
 * 
 * @beta
 */
public enum CS72LONGTypeEnum: Equatable {
  case jiaZi60(JiaZi60)
  case gan8Wei4(Gan8Wei4)
  public var rawValue: String {
    switch self {
    case .jiaZi60(let v):
      return v.rawValue
    case .gan8Wei4(let v):
      return v.rawValue
    }
  }
  public static func == (lhs: CS72LONGTypeEnum, rhs: CS72LONGTypeEnum) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
  public func eq<T>(to other: T) -> Bool where T : Literable {
    return self.rawValue == other.rawValue
  }
  public func hash(into hasher: inout Hasher) {
    hasher.combine(self.rawValue)
  }
}
public class CS72LONGType: LiteralType {
  public let element: CS72LONGTypeEnum
  public var actualValue: LiteralType {
    switch self.element {
    case .jiaZi60(let v):
      return v
    case .gan8Wei4(let v):
      return v
    }
  }

  public required init(stringLiteral rawValue: String) {
    self.element = 
      ["JA_ZI","YI_CO","BN_YN","DN_MO","WO_CN","JI_SI","GN_WU","XN_WI","RN_SN","GW_YO","JA_XU","YI_HI","BN_ZI","DN_CO","WO_YN","JI_MO","GN_CN","XN_SI","RN_WU","GW_WI","JA_SN","YI_YO","BN_XU","DN_HI","WO_ZI","JI_CO","GN_YN","XN_MO","RN_CN","GW_SI","JA_WU","YI_WI","BN_SN","DN_YO","WO_XU","JI_HI","GN_ZI","XN_CO","RN_YN","GW_MO","JA_CN","YI_SI","BN_WU","DN_WI","WO_SN","JI_YO","GN_XU","XN_HI","RN_ZI","GW_CO","JA_YN","YI_MO","BN_CN","DN_SI","WO_WU","JI_WI","GN_SN","XN_YO","RN_XU","GW_HI"].contains(rawValue)
      ? .jiaZi60(JiaZi60(stringLiteral: rawValue))
      : ["JA","YI","BN","DN","GN","XN","RN","GW","QIAN","KUNN","GENG","XUEN"].contains(rawValue)
      ? .gan8Wei4(Gan8Wei4(stringLiteral: rawValue))
      : .jiaZi60(JiaZi60(stringLiteral: "Unexpected"))
    super.init(stringLiteral: self.element.rawValue)
  }
  
  public static let JA_ZI: CS72LONGType = "JA_ZI"
  public static let YI_CO: CS72LONGType = "YI_CO"
  public static let BN_YN: CS72LONGType = "BN_YN"
  public static let DN_MO: CS72LONGType = "DN_MO"
  public static let WO_CN: CS72LONGType = "WO_CN"
  public static let JI_SI: CS72LONGType = "JI_SI"
  public static let GN_WU: CS72LONGType = "GN_WU"
  public static let XN_WI: CS72LONGType = "XN_WI"
  public static let RN_SN: CS72LONGType = "RN_SN"
  public static let GW_YO: CS72LONGType = "GW_YO"
  public static let JA_XU: CS72LONGType = "JA_XU"
  public static let YI_HI: CS72LONGType = "YI_HI"
  public static let BN_ZI: CS72LONGType = "BN_ZI"
  public static let DN_CO: CS72LONGType = "DN_CO"
  public static let WO_YN: CS72LONGType = "WO_YN"
  public static let JI_MO: CS72LONGType = "JI_MO"
  public static let GN_CN: CS72LONGType = "GN_CN"
  public static let XN_SI: CS72LONGType = "XN_SI"
  public static let RN_WU: CS72LONGType = "RN_WU"
  public static let GW_WI: CS72LONGType = "GW_WI"
  public static let JA_SN: CS72LONGType = "JA_SN"
  public static let YI_YO: CS72LONGType = "YI_YO"
  public static let BN_XU: CS72LONGType = "BN_XU"
  public static let DN_HI: CS72LONGType = "DN_HI"
  public static let WO_ZI: CS72LONGType = "WO_ZI"
  public static let JI_CO: CS72LONGType = "JI_CO"
  public static let GN_YN: CS72LONGType = "GN_YN"
  public static let XN_MO: CS72LONGType = "XN_MO"
  public static let RN_CN: CS72LONGType = "RN_CN"
  public static let GW_SI: CS72LONGType = "GW_SI"
  public static let JA_WU: CS72LONGType = "JA_WU"
  public static let YI_WI: CS72LONGType = "YI_WI"
  public static let BN_SN: CS72LONGType = "BN_SN"
  public static let DN_YO: CS72LONGType = "DN_YO"
  public static let WO_XU: CS72LONGType = "WO_XU"
  public static let JI_HI: CS72LONGType = "JI_HI"
  public static let GN_ZI: CS72LONGType = "GN_ZI"
  public static let XN_CO: CS72LONGType = "XN_CO"
  public static let RN_YN: CS72LONGType = "RN_YN"
  public static let GW_MO: CS72LONGType = "GW_MO"
  public static let JA_CN: CS72LONGType = "JA_CN"
  public static let YI_SI: CS72LONGType = "YI_SI"
  public static let BN_WU: CS72LONGType = "BN_WU"
  public static let DN_WI: CS72LONGType = "DN_WI"
  public static let WO_SN: CS72LONGType = "WO_SN"
  public static let JI_YO: CS72LONGType = "JI_YO"
  public static let GN_XU: CS72LONGType = "GN_XU"
  public static let XN_HI: CS72LONGType = "XN_HI"
  public static let RN_ZI: CS72LONGType = "RN_ZI"
  public static let GW_CO: CS72LONGType = "GW_CO"
  public static let JA_YN: CS72LONGType = "JA_YN"
  public static let YI_MO: CS72LONGType = "YI_MO"
  public static let BN_CN: CS72LONGType = "BN_CN"
  public static let DN_SI: CS72LONGType = "DN_SI"
  public static let WO_WU: CS72LONGType = "WO_WU"
  public static let JI_WI: CS72LONGType = "JI_WI"
  public static let GN_SN: CS72LONGType = "GN_SN"
  public static let XN_YO: CS72LONGType = "XN_YO"
  public static let RN_XU: CS72LONGType = "RN_XU"
  public static let GW_HI: CS72LONGType = "GW_HI"
  public static let JA: CS72LONGType = "JA"
  public static let YI: CS72LONGType = "YI"
  public static let BN: CS72LONGType = "BN"
  public static let DN: CS72LONGType = "DN"
  public static let GN: CS72LONGType = "GN"
  public static let XN: CS72LONGType = "XN"
  public static let RN: CS72LONGType = "RN"
  public static let GW: CS72LONGType = "GW"
  public static let QIAN: CS72LONGType = "QIAN"
  public static let KUNN: CS72LONGType = "KUNN"
  public static let GENG: CS72LONGType = "GENG"
  public static let XUEN: CS72LONGType = "XUEN"
}

