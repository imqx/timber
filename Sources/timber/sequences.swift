
// This file is generated by Timber Generator
// Name: bundle/swift/timber/Sources/timber/sequences.swift
// Version: 0.5.1
// Time: 2021/10/5
// Parser: v1.3.1 @Tue Sep 28 2021 08:00:00 GMT+0800 (中国标准时间)

public protocol ElementSequenceProtocol {
  var literals: [LiteralType] { get }
  var rawValues: [String] { get }
  var descriptions: [String] { get }
}

public struct ElementSequence<T: LiteralType>: ElementSequenceProtocol {
  public var sequence: [T]
  public var literals: [LiteralType] {
    sequence.map { $0 as LiteralType }
  }
  public var rawValues: [String] {
    sequence.map { $0.rawValue }
  }
  public var descriptions: [String] {
    sequence.map { $0.description }
  }
}

public class Sequences {
/**
 * [Sequence] 二十四山方位排列顺序，起癸
 * @remarks
 * 罗盘15度位起，每15度一山
 * 
 * @public
 */
  public static let shan24: ElementSequence<Shan24> = ElementSequence<Shan24>(sequence: [.GW,.CO,.GENG,.YN,.JA,.MO,.YI,.CN,.XUEN,.SI,.BN,.WU,.DN,.WI,.KUNN,.SN,.GN,.YO,.XN,.XU,.QIAN,.HI,.RN,.ZI])
   

/**
 * [Sequence] 二十四山 _ 双山方位排列顺序，起 壬子
 * 
 * @public
 */
  public static let shuangshan: ElementSequence<ShuangShan> = ElementSequence<ShuangShan>(sequence: [.RN_ZI,.GW_CO,.GENG_YN,.JA_MO,.YI_CN,.XUEN_SI,.BN_WU,.DN_WI,.KUNN_SN,.GN_YO,.XN_XU,.QIAN_HI])
   

/**
 * [Sequence] 二十四山 _ 三山方位排列顺序，起 壬子癸
 * 
 * @public
 */
  public static let sanshan: ElementSequence<SanShan> = ElementSequence<SanShan>(sequence: [.RN_ZI_GW,.CO_GENG_YN,.JA_MO_YI,.CN_XUEN_SI,.BN_WU_DN,.WI_KUNN_SN,.GN_YO_XN,.XU_QIAN_HI])
   

/**
 * [Sequence] 地盘百二十分金顺序位 起庚子
 * 
 * @public
 */
  public static let dpzz120fj: ElementSequence<DPZZ120FJType> = ElementSequence<DPZZ120FJType>(sequence: [.GN_ZI,.RN_ZI,.JA_ZI,.BN_ZI,.WO_ZI,.GN_ZI,.RN_ZI,.YI_CO,.DN_CO,.JI_CO,.XN_CO,.GW_CO,.YI_CO,.DN_CO,.JI_CO,.XN_CO,.GW_CO,.JA_YN,.BN_YN,.WO_YN,.GN_YN,.RN_YN,.JA_YN,.BN_YN,.WO_YN,.GN_YN,.RN_YN,.YI_MO,.DN_MO,.JI_MO,.XN_MO,.GW_MO,.YI_MO,.DN_MO,.JI_MO,.XN_MO,.GW_MO,.JA_CN,.BN_CN,.WO_CN,.GN_CN,.RN_CN,.JA_CN,.BN_CN,.WO_CN,.GN_CN,.RN_CN,.YI_SI,.DN_SI,.JI_SI,.XN_SI,.GW_SI,.YI_SI,.DN_SI,.JI_SI,.XN_SI,.GW_SI,.JA_WU,.BN_WU,.WO_WU,.GN_WU,.RN_WU,.JA_WU,.BN_WU,.WO_WU,.GN_WU,.RN_WU,.YI_WI,.DN_WI,.JI_WI,.XN_WI,.GW_WI,.YI_WI,.DN_WI,.JI_WI,.XN_WI,.GW_WI,.JA_SN,.BN_SN,.WO_SN,.GN_SN,.RN_SN,.JA_SN,.BN_SN,.WO_SN,.GN_SN,.RN_SN,.YI_YO,.DN_YO,.JI_YO,.XN_YO,.GW_YO,.YI_YO,.DN_YO,.JI_YO,.XN_YO,.GW_YO,.JA_XU,.BN_XU,.WO_XU,.GN_XU,.RN_XU,.JA_XU,.BN_XU,.WO_XU,.GN_XU,.RN_XU,.YI_HI,.DN_HI,.JI_HI,.XN_HI,.GW_HI,.YI_HI,.DN_HI,.JI_HI,.XN_HI,.GW_HI,.JA_ZI,.BN_ZI,.WO_ZI])
   

/**
 * [Sequence] 先天八卦顺序位 起震
 * 
 * @public
 */
  public static let xtbg: ElementSequence<BaGua> = ElementSequence<BaGua>(sequence: [.ZHEN,.LIEN,.DUEI,.QIAN,.XUEN,.KANN,.GENG,.KUNN])
   

/**
 * [Sequence] 后天八卦顺序位 起艮
 * 
 * @public
 */
  public static let htbg: ElementSequence<BaGua> = ElementSequence<BaGua>(sequence: [.GENG,.ZHEN,.XUEN,.LIEN,.KUNN,.DUEI,.QIAN,.KANN])
   

/**
 * [Sequence] 河图洛书数顺序位 起八
 * 
 * @public
 */
  public static let htlss: ElementSequence<HeTuLuoShuShu> = ElementSequence<HeTuLuoShuShu>(sequence: [.h8,.h3,.h4,.h9,.h2,.h7,.h6,.h1])
   

/**
 * [Sequence] 九星翻卦顺序位，`Key`为起位
 * 
 * @public
 */
  public static let jxfgz: [BaGua: ElementSequence<BaGua>] = [
    .QIAN: ElementSequence<BaGua>(sequence: [.QIAN,.LIEN,.GENG,.XUEN,.KANN,.KUNN,.ZHEN,.DUEI]),
    .GENG: ElementSequence<BaGua>(sequence: [.GENG,.XUEN,.QIAN,.LIEN,.ZHEN,.DUEI,.KANN,.KUNN]),
    .KANN: ElementSequence<BaGua>(sequence: [.KANN,.KUNN,.ZHEN,.DUEI,.QIAN,.LIEN,.GENG,.XUEN]),
    .ZHEN: ElementSequence<BaGua>(sequence: [.ZHEN,.DUEI,.KANN,.KUNN,.GENG,.XUEN,.QIAN,.LIEN]),
    .LIEN: ElementSequence<BaGua>(sequence: [.LIEN,.QIAN,.XUEN,.GENG,.KUNN,.KANN,.DUEI,.ZHEN]),
    .XUEN: ElementSequence<BaGua>(sequence: [.XUEN,.GENG,.LIEN,.QIAN,.DUEI,.ZHEN,.KUNN,.KANN]),
    .KUNN: ElementSequence<BaGua>(sequence: [.KUNN,.KANN,.DUEI,.ZHEN,.LIEN,.QIAN,.XUEN,.GENG]),
    .DUEI: ElementSequence<BaGua>(sequence: [.DUEI,.ZHEN,.KUNN,.KANN,.XUEN,.GENG,.LIEN,.QIAN])
  ]
   

/**
 * [Sequence] 八宅_伏、绝、天、祸、六、延、五、生顺序位
 * 
 * @public
 */
  public static let bazhaiwei: ElementSequence<BaZhaiWei> = ElementSequence<BaZhaiWei>(sequence: [.fw,.jn,.ty,.hh,.ls,.yn,.wg,.sq])
   

/**
 * [Sequence] 九星八位贪、巨、禄、文、廉、武、破、辅顺序位
 * 
 * @public
 */
  public static let jiuxingin8: ElementSequence<JiuXingIn8> = ElementSequence<JiuXingIn8>(sequence: [.tl,.jm,.lc,.nq,.lz,.uq,.pj,.fb])
   

/**
 * [Sequence] 地支十二宫 顺序位起丑
 * 
 * @public
 */
  public static let dz12g: ElementSequence<DiZhi> = ElementSequence<DiZhi>(sequence: [.CO,.YN,.MO,.CN,.SI,.WU,.WI,.SN,.YO,.XU,.HI,.ZI])
   

/**
 * [Sequence] 六十甲子排序
 * 
 * @public
 */
  public static let jiazi60: ElementSequence<JiaZi60> = ElementSequence<JiaZi60>(sequence: [.JA_ZI,.YI_CO,.BN_YN,.DN_MO,.WO_CN,.JI_SI,.GN_WU,.XN_WI,.RN_SN,.GW_YO,.JA_XU,.YI_HI,.BN_ZI,.DN_CO,.WO_YN,.JI_MO,.GN_CN,.XN_SI,.RN_WU,.GW_WI,.JA_SN,.YI_YO,.BN_XU,.DN_HI,.WO_ZI,.JI_CO,.GN_YN,.XN_MO,.RN_CN,.GW_SI,.JA_WU,.YI_WI,.BN_SN,.DN_YO,.WO_XU,.JI_HI,.GN_ZI,.XN_CO,.RN_YN,.GW_MO,.JA_CN,.YI_SI,.BN_WU,.DN_WI,.WO_SN,.JI_YO,.GN_XU,.XN_HI,.RN_ZI,.GW_CO,.JA_YN,.YI_MO,.BN_CN,.DN_SI,.WO_WU,.JI_WI,.GN_SN,.XN_YO,.RN_XU,.GW_HI])
   

/**
 * [Sequence] 八煞黄泉顺序位 起寅（艮位）
 * 
 * @public
 */
  public static let bshq: ElementSequence<BSHQType> = ElementSequence<BSHQType>(sequence: [.YN,.SN,.YO,.HI,.MO,.SI,.WU,.CN])
   

/**
 * [Sequence] 二十四山劫煞顺序位 起巳（癸位）
 * 
 * @public
 */
  public static let sh24js: ElementSequence<SH24JSType> = ElementSequence<SH24JSType>(sequence: [.SI,.CN,.DN,.WI,.BN,.DN,.SN,.WI,.GW,.YO,.XN,.YO,.YN,.GW,.YI,.GW,.WU,.YN,.CO,.CO,.MO,.YI,.SN,.SI])
   

/**
 * [Sequence] 穿山七十二龙 顺序位，起庚子
 * 
 * @public
 */
  public static let cs72long: ElementSequence<CS72LONGType> = ElementSequence<CS72LONGType>(sequence: [.GN_ZI,.RN_ZI,.GW,.YI_CO,.DN_CO,.JI_CO,.XN_CO,.GW_CO,.GENG,.BN_YN,.WO_YN,.GN_YN,.RN_YN,.JA_YN,.JA,.DN_MO,.JI_MO,.XN_MO,.GW_MO,.YI_MO,.YI,.WO_CN,.GN_CN,.RN_CN,.JA_CN,.BN_CN,.XUEN,.JI_SI,.XN_SI,.GW_SI,.YI_SI,.DN_SI,.BN,.GN_WU,.RN_WU,.JA_WU,.BN_WU,.WO_WU,.DN,.XN_WI,.GW_WI,.YI_WI,.DN_WI,.JI_WI,.KUNN,.RN_SN,.JA_SN,.BN_SN,.WO_SN,.GN_SN,.GN,.GW_YO,.YI_YO,.DN_YO,.JI_YO,.XN_YO,.XN,.JA_XU,.BN_XU,.WO_XU,.GN_XU,.RN_XU,.QIAN,.YI_HI,.DN_HI,.JI_HI,.XN_HI,.GW_HI,.RN,.JA_ZI,.BN_ZI,.WO_ZI])
   

/**
 * [Sequence] 透地六十龙顺序位，起壬子
 * 
 * @public
 */
  public static let td60long: ElementSequence<TD60LONGType> = ElementSequence<TD60LONGType>(sequence: [.RN_ZI,.YI_CO,.DN_CO,.JI_CO,.XN_CO,.GW_CO,.BN_YN,.WO_YN,.GN_YN,.RN_YN,.JA_YN,.DN_MO,.JI_MO,.XN_MO,.GW_MO,.YI_MO,.WO_CN,.GN_CN,.RN_CN,.JA_CN,.BN_CN,.JI_SI,.XN_SI,.GW_SI,.YI_SI,.DN_SI,.GN_WU,.RN_WU,.JA_WU,.BN_WU,.WO_WU,.XN_WI,.GW_WI,.YI_WI,.DN_WI,.JI_WI,.RN_SN,.JA_SN,.BN_SN,.WO_SN,.GN_SN,.GW_YO,.YI_YO,.DN_YO,.JI_YO,.XN_YO,.JA_XU,.BN_XU,.WO_XU,.GN_XU,.RN_XU,.YI_HI,.DN_HI,.JI_HI,.XN_HI,.GW_HI,.JA_ZI,.BN_ZI,.WO_ZI,.GN_ZI])
   
}
    

