// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let avatarsJSON = try AvatarsJSON(json)

import Foundation

// MARK: - AvatarsJSONValue
struct AvatarsJSONValue: Codable {
    let strID: String
    let nameHash: String
    let rarity: Int
    let element: Element
    let profession: String
    let weaponType: WeaponType
    let mainAttrID: Int
    let subAttrID: Int
    let attributeNodes: AttributeNodes
    let skillInfoMap: [String: SkillInfoMap]
    let nodeSkillMap: [String: NodeSkillMap]
    let potAttributes: [PotAttribute]
    let baseHPByLevel: [Int]
    let baseAtkByLevel: [Int]
    let baseAttributes: [String: BaseAttribute]

    enum CodingKeys: String, CodingKey {
        case strID = "StrId"
        case nameHash = "NameHash"
        case rarity = "Rarity"
        case element = "Element"
        case profession = "Profession"
        case weaponType = "WeaponType"
        case mainAttrID = "MainAttrId"
        case subAttrID = "SubAttrId"
        case attributeNodes = "AttributeNodes"
        case skillInfoMap = "SkillInfoMap"
        case nodeSkillMap = "NodeSkillMap"
        case potAttributes = "PotAttributes"
        case baseHPByLevel = "BaseHpByLevel"
        case baseAtkByLevel = "BaseAtkByLevel"
        case baseAttributes = "BaseAttributes"
    }
}

// MARK: AvatarsJSONValue convenience initializers and mutators

extension AvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AvatarsJSONValue.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        strID: String? = nil,
        nameHash: String? = nil,
        rarity: Int? = nil,
        element: Element? = nil,
        profession: String? = nil,
        weaponType: WeaponType? = nil,
        mainAttrID: Int? = nil,
        subAttrID: Int? = nil,
        attributeNodes: AttributeNodes? = nil,
        skillInfoMap: [String: SkillInfoMap]? = nil,
        nodeSkillMap: [String: NodeSkillMap]? = nil,
        potAttributes: [PotAttribute]? = nil,
        baseHPByLevel: [Int]? = nil,
        baseAtkByLevel: [Int]? = nil,
        baseAttributes: [String: BaseAttribute]? = nil
    ) -> AvatarsJSONValue {
        return AvatarsJSONValue(
            strID: strID ?? self.strID,
            nameHash: nameHash ?? self.nameHash,
            rarity: rarity ?? self.rarity,
            element: element ?? self.element,
            profession: profession ?? self.profession,
            weaponType: weaponType ?? self.weaponType,
            mainAttrID: mainAttrID ?? self.mainAttrID,
            subAttrID: subAttrID ?? self.subAttrID,
            attributeNodes: attributeNodes ?? self.attributeNodes,
            skillInfoMap: skillInfoMap ?? self.skillInfoMap,
            nodeSkillMap: nodeSkillMap ?? self.nodeSkillMap,
            potAttributes: potAttributes ?? self.potAttributes,
            baseHPByLevel: baseHPByLevel ?? self.baseHPByLevel,
            baseAtkByLevel: baseAtkByLevel ?? self.baseAtkByLevel,
            baseAttributes: baseAttributes ?? self.baseAttributes
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AttributeNodes
struct AttributeNodes: Codable {
    let chr0007_Ikut3: Chr?
    let chr0007_Ikut1: Chr?
    let chr0007_Ikut7: Chr?
    let chr0007_Ikut5: Chr?
    let chr0009_Azrila1: Chr0006_Wolfgd1_Class?
    let chr0009_Azrila3: Chr0006_Wolfgd1_Class?
    let chr0009_Azrila5: Chr0006_Wolfgd1_Class?
    let chr0009_Azrila7: Chr0006_Wolfgd1_Class?
    let chr0011_Seraph7: Chr0011_Seraph1_Class?
    let chr0011_Seraph5: Chr0011_Seraph1_Class?
    let chr0011_Seraph3: Chr0011_Seraph1_Class?
    let chr0011_Seraph1: Chr0011_Seraph1_Class?
    let chr0004_Pelica7: Chr0004_Pelica1_Class?
    let chr0004_Pelica5: Chr0004_Pelica1_Class?
    let chr0004_Pelica3: Chr0004_Pelica1_Class?
    let chr0004_Pelica1: Chr0004_Pelica1_Class?
    let chr0012_Avywen5: Chr0011_Seraph1_Class?
    let chr0012_Avywen7: Chr0011_Seraph1_Class?
    let chr0012_Avywen1: Chr0011_Seraph1_Class?
    let chr0012_Avywen3: Chr0011_Seraph1_Class?
    let chr0013_Aglina3: Chr0011_Seraph1_Class?
    let chr0013_Aglina1: Chr0011_Seraph1_Class?
    let chr0013_Aglina7: Chr0011_Seraph1_Class?
    let chr0013_Aglina5: Chr0011_Seraph1_Class?
    let chr0005_Chen5: Chr?
    let chr0005_Chen7: Chr?
    let chr0005_Chen1: Chr?
    let chr0005_Chen3: Chr?
    let chr0006_Wolfgd3: Chr0006_Wolfgd1_Class?
    let chr0006_Wolfgd5: Chr0006_Wolfgd1_Class?
    let chr0006_Wolfgd7: Chr0006_Wolfgd1_Class?
    let chr0006_Wolfgd1: Chr0006_Wolfgd1_Class?
    let chr0018_Dapan5: Chr0006_Wolfgd1_Class?
    let chr0018_Dapan7: Chr0006_Wolfgd1_Class?
    let chr0018_Dapan3: Chr0006_Wolfgd1_Class?
    let chr0018_Dapan1: Chr0006_Wolfgd1_Class?
    let chr0002_Endminm7: Chr?
    let chr0002_Endminm1: Chr?
    let chr0002_Endminm5: Chr?
    let chr0002_Endminm3: Chr?
    let chr0016_Laevat7: Chr0004_Pelica1_Class?
    let chr0016_Laevat5: Chr0004_Pelica1_Class?
    let chr0016_Laevat3: Chr0004_Pelica1_Class?
    let chr0016_Laevat1: Chr0004_Pelica1_Class?
    let chr0014_Aurora1: Chr0006_Wolfgd1_Class?
    let chr0014_Aurora3: Chr0006_Wolfgd1_Class?
    let chr0014_Aurora5: Chr0006_Wolfgd1_Class?
    let chr0014_Aurora7: Chr0006_Wolfgd1_Class?
    let chr0015_Lifeng1: Chr?
    let chr0015_Lifeng7: Chr?
    let chr0015_Lifeng5: Chr?
    let chr0015_Lifeng3: Chr?
    let chr0017_Yvonne1: Chr0004_Pelica1_Class?
    let chr0017_Yvonne3: Chr0004_Pelica1_Class?
    let chr0017_Yvonne5: Chr0004_Pelica1_Class?
    let chr0017_Yvonne7: Chr0004_Pelica1_Class?
    let chr0003_Endminf5: Chr?
    let chr0003_Endminf7: Chr?
    let chr0003_Endminf3: Chr?
    let chr0003_Endminf1: Chr?
    let chr0019_Karin1: Chr?
    let chr0019_Karin5: Chr?
    let chr0019_Karin3: Chr?
    let chr0019_Karin7: Chr?
    let chr0021_Whiten5: Chr0011_Seraph1_Class?
    let chr0021_Whiten7: Chr0011_Seraph1_Class?
    let chr0021_Whiten1: Chr0011_Seraph1_Class?
    let chr0021_Whiten3: Chr0011_Seraph1_Class?
    let chr0022_Bounda1: Chr?
    let chr0022_Bounda3: Chr?
    let chr0022_Bounda5: Chr?
    let chr0022_Bounda7: Chr?
    let chr0023_Antal3: Chr0004_Pelica1_Class?
    let chr0023_Antal1: Chr0004_Pelica1_Class?
    let chr0023_Antal5: Chr0004_Pelica1_Class?
    let chr0023_Antal7: Chr0004_Pelica1_Class?
    let chr0020_Meurs3: Chr0006_Wolfgd1_Class?
    let chr0020_Meurs7: Chr0006_Wolfgd1_Class?
    let chr0020_Meurs1: Chr0006_Wolfgd1_Class?
    let chr0020_Meurs5: Chr0006_Wolfgd1_Class?
    let chr9000_Endmin1: Chr?
    let chr9000_Endmin3: Chr?
    let chr9000_Endmin5: Chr?
    let chr9000_Endmin7: Chr?
    let chr0024_Deepfin7: Chr0006_Wolfgd1_Class?
    let chr0024_Deepfin1: Chr0006_Wolfgd1_Class?
    let chr0024_Deepfin3: Chr0006_Wolfgd1_Class?
    let chr0024_Deepfin5: Chr0006_Wolfgd1_Class?
    let chr0028_Wulfa7: Chr?
    let chr0028_Wulfa5: Chr?
    let chr0028_Wulfa1: Chr?
    let chr0028_Wulfa3: Chr?
    let chr0026_Lastrite1: Chr0006_Wolfgd1_Class?
    let chr0026_Lastrite3: Chr0006_Wolfgd1_Class?
    let chr0026_Lastrite5: Chr0006_Wolfgd1_Class?
    let chr0026_Lastrite7: Chr0006_Wolfgd1_Class?
    let chr0029_Pograni5: Chr0011_Seraph1_Class?
    let chr0029_Pograni7: Chr0011_Seraph1_Class?
    let chr0029_Pograni3: Chr0011_Seraph1_Class?
    let chr0029_Pograni1: Chr0011_Seraph1_Class?
    let chr0025_Ardelia7: Chr0004_Pelica1_Class?
    let chr0025_Ardelia3: Chr0004_Pelica1_Class?
    let chr0025_Ardelia1: Chr0004_Pelica1_Class?
    let chr0025_Ardelia5: Chr0004_Pelica1_Class?
    let chr0027_Tangtang5: Chr?
    let chr0027_Tangtang7: Chr?
    let chr0027_Tangtang1: Chr?
    let chr0027_Tangtang3: Chr?
    let chr0030_Zhuangfy1: Chr0011_Seraph1_Class?
    let chr0030_Zhuangfy3: Chr0011_Seraph1_Class?
    let chr0030_Zhuangfy5: Chr0011_Seraph1_Class?
    let chr0030_Zhuangfy7: Chr0011_Seraph1_Class?
    let chr0031_Mifu3: Chr0006_Wolfgd1_Class?
    let chr0031_Mifu1: Chr0006_Wolfgd1_Class?
    let chr0031_Mifu7: Chr0006_Wolfgd1_Class?
    let chr0031_Mifu5: Chr0006_Wolfgd1_Class?
    let chr0032_Lizhiyan5: [String: Int]?
    let chr0032_Lizhiyan3: [String: Int]?
    let chr0032_Lizhiyan1: [String: Int]?
    let chr0032_Lizhiyan7: [String: Int]?
    let chr0033_Camille1: Chr?
    let chr0033_Camille7: Chr?
    let chr0033_Camille5: Chr?
    let chr0033_Camille3: Chr?

    enum CodingKeys: String, CodingKey {
        case chr0007_Ikut3 = "chr_0007_ikut_3"
        case chr0007_Ikut1 = "chr_0007_ikut_1"
        case chr0007_Ikut7 = "chr_0007_ikut_7"
        case chr0007_Ikut5 = "chr_0007_ikut_5"
        case chr0009_Azrila1 = "chr_0009_azrila_1"
        case chr0009_Azrila3 = "chr_0009_azrila_3"
        case chr0009_Azrila5 = "chr_0009_azrila_5"
        case chr0009_Azrila7 = "chr_0009_azrila_7"
        case chr0011_Seraph7 = "chr_0011_seraph_7"
        case chr0011_Seraph5 = "chr_0011_seraph_5"
        case chr0011_Seraph3 = "chr_0011_seraph_3"
        case chr0011_Seraph1 = "chr_0011_seraph_1"
        case chr0004_Pelica7 = "chr_0004_pelica_7"
        case chr0004_Pelica5 = "chr_0004_pelica_5"
        case chr0004_Pelica3 = "chr_0004_pelica_3"
        case chr0004_Pelica1 = "chr_0004_pelica_1"
        case chr0012_Avywen5 = "chr_0012_avywen_5"
        case chr0012_Avywen7 = "chr_0012_avywen_7"
        case chr0012_Avywen1 = "chr_0012_avywen_1"
        case chr0012_Avywen3 = "chr_0012_avywen_3"
        case chr0013_Aglina3 = "chr_0013_aglina_3"
        case chr0013_Aglina1 = "chr_0013_aglina_1"
        case chr0013_Aglina7 = "chr_0013_aglina_7"
        case chr0013_Aglina5 = "chr_0013_aglina_5"
        case chr0005_Chen5 = "chr_0005_chen_5"
        case chr0005_Chen7 = "chr_0005_chen_7"
        case chr0005_Chen1 = "chr_0005_chen_1"
        case chr0005_Chen3 = "chr_0005_chen_3"
        case chr0006_Wolfgd3 = "chr_0006_wolfgd_3"
        case chr0006_Wolfgd5 = "chr_0006_wolfgd_5"
        case chr0006_Wolfgd7 = "chr_0006_wolfgd_7"
        case chr0006_Wolfgd1 = "chr_0006_wolfgd_1"
        case chr0018_Dapan5 = "chr_0018_dapan_5"
        case chr0018_Dapan7 = "chr_0018_dapan_7"
        case chr0018_Dapan3 = "chr_0018_dapan_3"
        case chr0018_Dapan1 = "chr_0018_dapan_1"
        case chr0002_Endminm7 = "chr_0002_endminm_7"
        case chr0002_Endminm1 = "chr_0002_endminm_1"
        case chr0002_Endminm5 = "chr_0002_endminm_5"
        case chr0002_Endminm3 = "chr_0002_endminm_3"
        case chr0016_Laevat7 = "chr_0016_laevat_7"
        case chr0016_Laevat5 = "chr_0016_laevat_5"
        case chr0016_Laevat3 = "chr_0016_laevat_3"
        case chr0016_Laevat1 = "chr_0016_laevat_1"
        case chr0014_Aurora1 = "chr_0014_aurora_1"
        case chr0014_Aurora3 = "chr_0014_aurora_3"
        case chr0014_Aurora5 = "chr_0014_aurora_5"
        case chr0014_Aurora7 = "chr_0014_aurora_7"
        case chr0015_Lifeng1 = "chr_0015_lifeng_1"
        case chr0015_Lifeng7 = "chr_0015_lifeng_7"
        case chr0015_Lifeng5 = "chr_0015_lifeng_5"
        case chr0015_Lifeng3 = "chr_0015_lifeng_3"
        case chr0017_Yvonne1 = "chr_0017_yvonne_1"
        case chr0017_Yvonne3 = "chr_0017_yvonne_3"
        case chr0017_Yvonne5 = "chr_0017_yvonne_5"
        case chr0017_Yvonne7 = "chr_0017_yvonne_7"
        case chr0003_Endminf5 = "chr_0003_endminf_5"
        case chr0003_Endminf7 = "chr_0003_endminf_7"
        case chr0003_Endminf3 = "chr_0003_endminf_3"
        case chr0003_Endminf1 = "chr_0003_endminf_1"
        case chr0019_Karin1 = "chr_0019_karin_1"
        case chr0019_Karin5 = "chr_0019_karin_5"
        case chr0019_Karin3 = "chr_0019_karin_3"
        case chr0019_Karin7 = "chr_0019_karin_7"
        case chr0021_Whiten5 = "chr_0021_whiten_5"
        case chr0021_Whiten7 = "chr_0021_whiten_7"
        case chr0021_Whiten1 = "chr_0021_whiten_1"
        case chr0021_Whiten3 = "chr_0021_whiten_3"
        case chr0022_Bounda1 = "chr_0022_bounda_1"
        case chr0022_Bounda3 = "chr_0022_bounda_3"
        case chr0022_Bounda5 = "chr_0022_bounda_5"
        case chr0022_Bounda7 = "chr_0022_bounda_7"
        case chr0023_Antal3 = "chr_0023_antal_3"
        case chr0023_Antal1 = "chr_0023_antal_1"
        case chr0023_Antal5 = "chr_0023_antal_5"
        case chr0023_Antal7 = "chr_0023_antal_7"
        case chr0020_Meurs3 = "chr_0020_meurs_3"
        case chr0020_Meurs7 = "chr_0020_meurs_7"
        case chr0020_Meurs1 = "chr_0020_meurs_1"
        case chr0020_Meurs5 = "chr_0020_meurs_5"
        case chr9000_Endmin1 = "chr_9000_endmin_1"
        case chr9000_Endmin3 = "chr_9000_endmin_3"
        case chr9000_Endmin5 = "chr_9000_endmin_5"
        case chr9000_Endmin7 = "chr_9000_endmin_7"
        case chr0024_Deepfin7 = "chr_0024_deepfin_7"
        case chr0024_Deepfin1 = "chr_0024_deepfin_1"
        case chr0024_Deepfin3 = "chr_0024_deepfin_3"
        case chr0024_Deepfin5 = "chr_0024_deepfin_5"
        case chr0028_Wulfa7 = "chr_0028_wulfa_7"
        case chr0028_Wulfa5 = "chr_0028_wulfa_5"
        case chr0028_Wulfa1 = "chr_0028_wulfa_1"
        case chr0028_Wulfa3 = "chr_0028_wulfa_3"
        case chr0026_Lastrite1 = "chr_0026_lastrite_1"
        case chr0026_Lastrite3 = "chr_0026_lastrite_3"
        case chr0026_Lastrite5 = "chr_0026_lastrite_5"
        case chr0026_Lastrite7 = "chr_0026_lastrite_7"
        case chr0029_Pograni5 = "chr_0029_pograni_5"
        case chr0029_Pograni7 = "chr_0029_pograni_7"
        case chr0029_Pograni3 = "chr_0029_pograni_3"
        case chr0029_Pograni1 = "chr_0029_pograni_1"
        case chr0025_Ardelia7 = "chr_0025_ardelia_7"
        case chr0025_Ardelia3 = "chr_0025_ardelia_3"
        case chr0025_Ardelia1 = "chr_0025_ardelia_1"
        case chr0025_Ardelia5 = "chr_0025_ardelia_5"
        case chr0027_Tangtang5 = "chr_0027_tangtang_5"
        case chr0027_Tangtang7 = "chr_0027_tangtang_7"
        case chr0027_Tangtang1 = "chr_0027_tangtang_1"
        case chr0027_Tangtang3 = "chr_0027_tangtang_3"
        case chr0030_Zhuangfy1 = "chr_0030_zhuangfy_1"
        case chr0030_Zhuangfy3 = "chr_0030_zhuangfy_3"
        case chr0030_Zhuangfy5 = "chr_0030_zhuangfy_5"
        case chr0030_Zhuangfy7 = "chr_0030_zhuangfy_7"
        case chr0031_Mifu3 = "chr_0031_mifu_3"
        case chr0031_Mifu1 = "chr_0031_mifu_1"
        case chr0031_Mifu7 = "chr_0031_mifu_7"
        case chr0031_Mifu5 = "chr_0031_mifu_5"
        case chr0032_Lizhiyan5 = "chr_0032_lizhiyan_5"
        case chr0032_Lizhiyan3 = "chr_0032_lizhiyan_3"
        case chr0032_Lizhiyan1 = "chr_0032_lizhiyan_1"
        case chr0032_Lizhiyan7 = "chr_0032_lizhiyan_7"
        case chr0033_Camille1 = "chr_0033_camille_1"
        case chr0033_Camille7 = "chr_0033_camille_7"
        case chr0033_Camille5 = "chr_0033_camille_5"
        case chr0033_Camille3 = "chr_0033_camille_3"
    }
}

// MARK: AttributeNodes convenience initializers and mutators

extension AttributeNodes {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AttributeNodes.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        chr0007_Ikut3: Chr?? = nil,
        chr0007_Ikut1: Chr?? = nil,
        chr0007_Ikut7: Chr?? = nil,
        chr0007_Ikut5: Chr?? = nil,
        chr0009_Azrila1: Chr0006_Wolfgd1_Class?? = nil,
        chr0009_Azrila3: Chr0006_Wolfgd1_Class?? = nil,
        chr0009_Azrila5: Chr0006_Wolfgd1_Class?? = nil,
        chr0009_Azrila7: Chr0006_Wolfgd1_Class?? = nil,
        chr0011_Seraph7: Chr0011_Seraph1_Class?? = nil,
        chr0011_Seraph5: Chr0011_Seraph1_Class?? = nil,
        chr0011_Seraph3: Chr0011_Seraph1_Class?? = nil,
        chr0011_Seraph1: Chr0011_Seraph1_Class?? = nil,
        chr0004_Pelica7: Chr0004_Pelica1_Class?? = nil,
        chr0004_Pelica5: Chr0004_Pelica1_Class?? = nil,
        chr0004_Pelica3: Chr0004_Pelica1_Class?? = nil,
        chr0004_Pelica1: Chr0004_Pelica1_Class?? = nil,
        chr0012_Avywen5: Chr0011_Seraph1_Class?? = nil,
        chr0012_Avywen7: Chr0011_Seraph1_Class?? = nil,
        chr0012_Avywen1: Chr0011_Seraph1_Class?? = nil,
        chr0012_Avywen3: Chr0011_Seraph1_Class?? = nil,
        chr0013_Aglina3: Chr0011_Seraph1_Class?? = nil,
        chr0013_Aglina1: Chr0011_Seraph1_Class?? = nil,
        chr0013_Aglina7: Chr0011_Seraph1_Class?? = nil,
        chr0013_Aglina5: Chr0011_Seraph1_Class?? = nil,
        chr0005_Chen5: Chr?? = nil,
        chr0005_Chen7: Chr?? = nil,
        chr0005_Chen1: Chr?? = nil,
        chr0005_Chen3: Chr?? = nil,
        chr0006_Wolfgd3: Chr0006_Wolfgd1_Class?? = nil,
        chr0006_Wolfgd5: Chr0006_Wolfgd1_Class?? = nil,
        chr0006_Wolfgd7: Chr0006_Wolfgd1_Class?? = nil,
        chr0006_Wolfgd1: Chr0006_Wolfgd1_Class?? = nil,
        chr0018_Dapan5: Chr0006_Wolfgd1_Class?? = nil,
        chr0018_Dapan7: Chr0006_Wolfgd1_Class?? = nil,
        chr0018_Dapan3: Chr0006_Wolfgd1_Class?? = nil,
        chr0018_Dapan1: Chr0006_Wolfgd1_Class?? = nil,
        chr0002_Endminm7: Chr?? = nil,
        chr0002_Endminm1: Chr?? = nil,
        chr0002_Endminm5: Chr?? = nil,
        chr0002_Endminm3: Chr?? = nil,
        chr0016_Laevat7: Chr0004_Pelica1_Class?? = nil,
        chr0016_Laevat5: Chr0004_Pelica1_Class?? = nil,
        chr0016_Laevat3: Chr0004_Pelica1_Class?? = nil,
        chr0016_Laevat1: Chr0004_Pelica1_Class?? = nil,
        chr0014_Aurora1: Chr0006_Wolfgd1_Class?? = nil,
        chr0014_Aurora3: Chr0006_Wolfgd1_Class?? = nil,
        chr0014_Aurora5: Chr0006_Wolfgd1_Class?? = nil,
        chr0014_Aurora7: Chr0006_Wolfgd1_Class?? = nil,
        chr0015_Lifeng1: Chr?? = nil,
        chr0015_Lifeng7: Chr?? = nil,
        chr0015_Lifeng5: Chr?? = nil,
        chr0015_Lifeng3: Chr?? = nil,
        chr0017_Yvonne1: Chr0004_Pelica1_Class?? = nil,
        chr0017_Yvonne3: Chr0004_Pelica1_Class?? = nil,
        chr0017_Yvonne5: Chr0004_Pelica1_Class?? = nil,
        chr0017_Yvonne7: Chr0004_Pelica1_Class?? = nil,
        chr0003_Endminf5: Chr?? = nil,
        chr0003_Endminf7: Chr?? = nil,
        chr0003_Endminf3: Chr?? = nil,
        chr0003_Endminf1: Chr?? = nil,
        chr0019_Karin1: Chr?? = nil,
        chr0019_Karin5: Chr?? = nil,
        chr0019_Karin3: Chr?? = nil,
        chr0019_Karin7: Chr?? = nil,
        chr0021_Whiten5: Chr0011_Seraph1_Class?? = nil,
        chr0021_Whiten7: Chr0011_Seraph1_Class?? = nil,
        chr0021_Whiten1: Chr0011_Seraph1_Class?? = nil,
        chr0021_Whiten3: Chr0011_Seraph1_Class?? = nil,
        chr0022_Bounda1: Chr?? = nil,
        chr0022_Bounda3: Chr?? = nil,
        chr0022_Bounda5: Chr?? = nil,
        chr0022_Bounda7: Chr?? = nil,
        chr0023_Antal3: Chr0004_Pelica1_Class?? = nil,
        chr0023_Antal1: Chr0004_Pelica1_Class?? = nil,
        chr0023_Antal5: Chr0004_Pelica1_Class?? = nil,
        chr0023_Antal7: Chr0004_Pelica1_Class?? = nil,
        chr0020_Meurs3: Chr0006_Wolfgd1_Class?? = nil,
        chr0020_Meurs7: Chr0006_Wolfgd1_Class?? = nil,
        chr0020_Meurs1: Chr0006_Wolfgd1_Class?? = nil,
        chr0020_Meurs5: Chr0006_Wolfgd1_Class?? = nil,
        chr9000_Endmin1: Chr?? = nil,
        chr9000_Endmin3: Chr?? = nil,
        chr9000_Endmin5: Chr?? = nil,
        chr9000_Endmin7: Chr?? = nil,
        chr0024_Deepfin7: Chr0006_Wolfgd1_Class?? = nil,
        chr0024_Deepfin1: Chr0006_Wolfgd1_Class?? = nil,
        chr0024_Deepfin3: Chr0006_Wolfgd1_Class?? = nil,
        chr0024_Deepfin5: Chr0006_Wolfgd1_Class?? = nil,
        chr0028_Wulfa7: Chr?? = nil,
        chr0028_Wulfa5: Chr?? = nil,
        chr0028_Wulfa1: Chr?? = nil,
        chr0028_Wulfa3: Chr?? = nil,
        chr0026_Lastrite1: Chr0006_Wolfgd1_Class?? = nil,
        chr0026_Lastrite3: Chr0006_Wolfgd1_Class?? = nil,
        chr0026_Lastrite5: Chr0006_Wolfgd1_Class?? = nil,
        chr0026_Lastrite7: Chr0006_Wolfgd1_Class?? = nil,
        chr0029_Pograni5: Chr0011_Seraph1_Class?? = nil,
        chr0029_Pograni7: Chr0011_Seraph1_Class?? = nil,
        chr0029_Pograni3: Chr0011_Seraph1_Class?? = nil,
        chr0029_Pograni1: Chr0011_Seraph1_Class?? = nil,
        chr0025_Ardelia7: Chr0004_Pelica1_Class?? = nil,
        chr0025_Ardelia3: Chr0004_Pelica1_Class?? = nil,
        chr0025_Ardelia1: Chr0004_Pelica1_Class?? = nil,
        chr0025_Ardelia5: Chr0004_Pelica1_Class?? = nil,
        chr0027_Tangtang5: Chr?? = nil,
        chr0027_Tangtang7: Chr?? = nil,
        chr0027_Tangtang1: Chr?? = nil,
        chr0027_Tangtang3: Chr?? = nil,
        chr0030_Zhuangfy1: Chr0011_Seraph1_Class?? = nil,
        chr0030_Zhuangfy3: Chr0011_Seraph1_Class?? = nil,
        chr0030_Zhuangfy5: Chr0011_Seraph1_Class?? = nil,
        chr0030_Zhuangfy7: Chr0011_Seraph1_Class?? = nil,
        chr0031_Mifu3: Chr0006_Wolfgd1_Class?? = nil,
        chr0031_Mifu1: Chr0006_Wolfgd1_Class?? = nil,
        chr0031_Mifu7: Chr0006_Wolfgd1_Class?? = nil,
        chr0031_Mifu5: Chr0006_Wolfgd1_Class?? = nil,
        chr0032_Lizhiyan5: [String: Int]?? = nil,
        chr0032_Lizhiyan3: [String: Int]?? = nil,
        chr0032_Lizhiyan1: [String: Int]?? = nil,
        chr0032_Lizhiyan7: [String: Int]?? = nil,
        chr0033_Camille1: Chr?? = nil,
        chr0033_Camille7: Chr?? = nil,
        chr0033_Camille5: Chr?? = nil,
        chr0033_Camille3: Chr?? = nil
    ) -> AttributeNodes {
        return AttributeNodes(
            chr0007_Ikut3: chr0007_Ikut3 ?? self.chr0007_Ikut3,
            chr0007_Ikut1: chr0007_Ikut1 ?? self.chr0007_Ikut1,
            chr0007_Ikut7: chr0007_Ikut7 ?? self.chr0007_Ikut7,
            chr0007_Ikut5: chr0007_Ikut5 ?? self.chr0007_Ikut5,
            chr0009_Azrila1: chr0009_Azrila1 ?? self.chr0009_Azrila1,
            chr0009_Azrila3: chr0009_Azrila3 ?? self.chr0009_Azrila3,
            chr0009_Azrila5: chr0009_Azrila5 ?? self.chr0009_Azrila5,
            chr0009_Azrila7: chr0009_Azrila7 ?? self.chr0009_Azrila7,
            chr0011_Seraph7: chr0011_Seraph7 ?? self.chr0011_Seraph7,
            chr0011_Seraph5: chr0011_Seraph5 ?? self.chr0011_Seraph5,
            chr0011_Seraph3: chr0011_Seraph3 ?? self.chr0011_Seraph3,
            chr0011_Seraph1: chr0011_Seraph1 ?? self.chr0011_Seraph1,
            chr0004_Pelica7: chr0004_Pelica7 ?? self.chr0004_Pelica7,
            chr0004_Pelica5: chr0004_Pelica5 ?? self.chr0004_Pelica5,
            chr0004_Pelica3: chr0004_Pelica3 ?? self.chr0004_Pelica3,
            chr0004_Pelica1: chr0004_Pelica1 ?? self.chr0004_Pelica1,
            chr0012_Avywen5: chr0012_Avywen5 ?? self.chr0012_Avywen5,
            chr0012_Avywen7: chr0012_Avywen7 ?? self.chr0012_Avywen7,
            chr0012_Avywen1: chr0012_Avywen1 ?? self.chr0012_Avywen1,
            chr0012_Avywen3: chr0012_Avywen3 ?? self.chr0012_Avywen3,
            chr0013_Aglina3: chr0013_Aglina3 ?? self.chr0013_Aglina3,
            chr0013_Aglina1: chr0013_Aglina1 ?? self.chr0013_Aglina1,
            chr0013_Aglina7: chr0013_Aglina7 ?? self.chr0013_Aglina7,
            chr0013_Aglina5: chr0013_Aglina5 ?? self.chr0013_Aglina5,
            chr0005_Chen5: chr0005_Chen5 ?? self.chr0005_Chen5,
            chr0005_Chen7: chr0005_Chen7 ?? self.chr0005_Chen7,
            chr0005_Chen1: chr0005_Chen1 ?? self.chr0005_Chen1,
            chr0005_Chen3: chr0005_Chen3 ?? self.chr0005_Chen3,
            chr0006_Wolfgd3: chr0006_Wolfgd3 ?? self.chr0006_Wolfgd3,
            chr0006_Wolfgd5: chr0006_Wolfgd5 ?? self.chr0006_Wolfgd5,
            chr0006_Wolfgd7: chr0006_Wolfgd7 ?? self.chr0006_Wolfgd7,
            chr0006_Wolfgd1: chr0006_Wolfgd1 ?? self.chr0006_Wolfgd1,
            chr0018_Dapan5: chr0018_Dapan5 ?? self.chr0018_Dapan5,
            chr0018_Dapan7: chr0018_Dapan7 ?? self.chr0018_Dapan7,
            chr0018_Dapan3: chr0018_Dapan3 ?? self.chr0018_Dapan3,
            chr0018_Dapan1: chr0018_Dapan1 ?? self.chr0018_Dapan1,
            chr0002_Endminm7: chr0002_Endminm7 ?? self.chr0002_Endminm7,
            chr0002_Endminm1: chr0002_Endminm1 ?? self.chr0002_Endminm1,
            chr0002_Endminm5: chr0002_Endminm5 ?? self.chr0002_Endminm5,
            chr0002_Endminm3: chr0002_Endminm3 ?? self.chr0002_Endminm3,
            chr0016_Laevat7: chr0016_Laevat7 ?? self.chr0016_Laevat7,
            chr0016_Laevat5: chr0016_Laevat5 ?? self.chr0016_Laevat5,
            chr0016_Laevat3: chr0016_Laevat3 ?? self.chr0016_Laevat3,
            chr0016_Laevat1: chr0016_Laevat1 ?? self.chr0016_Laevat1,
            chr0014_Aurora1: chr0014_Aurora1 ?? self.chr0014_Aurora1,
            chr0014_Aurora3: chr0014_Aurora3 ?? self.chr0014_Aurora3,
            chr0014_Aurora5: chr0014_Aurora5 ?? self.chr0014_Aurora5,
            chr0014_Aurora7: chr0014_Aurora7 ?? self.chr0014_Aurora7,
            chr0015_Lifeng1: chr0015_Lifeng1 ?? self.chr0015_Lifeng1,
            chr0015_Lifeng7: chr0015_Lifeng7 ?? self.chr0015_Lifeng7,
            chr0015_Lifeng5: chr0015_Lifeng5 ?? self.chr0015_Lifeng5,
            chr0015_Lifeng3: chr0015_Lifeng3 ?? self.chr0015_Lifeng3,
            chr0017_Yvonne1: chr0017_Yvonne1 ?? self.chr0017_Yvonne1,
            chr0017_Yvonne3: chr0017_Yvonne3 ?? self.chr0017_Yvonne3,
            chr0017_Yvonne5: chr0017_Yvonne5 ?? self.chr0017_Yvonne5,
            chr0017_Yvonne7: chr0017_Yvonne7 ?? self.chr0017_Yvonne7,
            chr0003_Endminf5: chr0003_Endminf5 ?? self.chr0003_Endminf5,
            chr0003_Endminf7: chr0003_Endminf7 ?? self.chr0003_Endminf7,
            chr0003_Endminf3: chr0003_Endminf3 ?? self.chr0003_Endminf3,
            chr0003_Endminf1: chr0003_Endminf1 ?? self.chr0003_Endminf1,
            chr0019_Karin1: chr0019_Karin1 ?? self.chr0019_Karin1,
            chr0019_Karin5: chr0019_Karin5 ?? self.chr0019_Karin5,
            chr0019_Karin3: chr0019_Karin3 ?? self.chr0019_Karin3,
            chr0019_Karin7: chr0019_Karin7 ?? self.chr0019_Karin7,
            chr0021_Whiten5: chr0021_Whiten5 ?? self.chr0021_Whiten5,
            chr0021_Whiten7: chr0021_Whiten7 ?? self.chr0021_Whiten7,
            chr0021_Whiten1: chr0021_Whiten1 ?? self.chr0021_Whiten1,
            chr0021_Whiten3: chr0021_Whiten3 ?? self.chr0021_Whiten3,
            chr0022_Bounda1: chr0022_Bounda1 ?? self.chr0022_Bounda1,
            chr0022_Bounda3: chr0022_Bounda3 ?? self.chr0022_Bounda3,
            chr0022_Bounda5: chr0022_Bounda5 ?? self.chr0022_Bounda5,
            chr0022_Bounda7: chr0022_Bounda7 ?? self.chr0022_Bounda7,
            chr0023_Antal3: chr0023_Antal3 ?? self.chr0023_Antal3,
            chr0023_Antal1: chr0023_Antal1 ?? self.chr0023_Antal1,
            chr0023_Antal5: chr0023_Antal5 ?? self.chr0023_Antal5,
            chr0023_Antal7: chr0023_Antal7 ?? self.chr0023_Antal7,
            chr0020_Meurs3: chr0020_Meurs3 ?? self.chr0020_Meurs3,
            chr0020_Meurs7: chr0020_Meurs7 ?? self.chr0020_Meurs7,
            chr0020_Meurs1: chr0020_Meurs1 ?? self.chr0020_Meurs1,
            chr0020_Meurs5: chr0020_Meurs5 ?? self.chr0020_Meurs5,
            chr9000_Endmin1: chr9000_Endmin1 ?? self.chr9000_Endmin1,
            chr9000_Endmin3: chr9000_Endmin3 ?? self.chr9000_Endmin3,
            chr9000_Endmin5: chr9000_Endmin5 ?? self.chr9000_Endmin5,
            chr9000_Endmin7: chr9000_Endmin7 ?? self.chr9000_Endmin7,
            chr0024_Deepfin7: chr0024_Deepfin7 ?? self.chr0024_Deepfin7,
            chr0024_Deepfin1: chr0024_Deepfin1 ?? self.chr0024_Deepfin1,
            chr0024_Deepfin3: chr0024_Deepfin3 ?? self.chr0024_Deepfin3,
            chr0024_Deepfin5: chr0024_Deepfin5 ?? self.chr0024_Deepfin5,
            chr0028_Wulfa7: chr0028_Wulfa7 ?? self.chr0028_Wulfa7,
            chr0028_Wulfa5: chr0028_Wulfa5 ?? self.chr0028_Wulfa5,
            chr0028_Wulfa1: chr0028_Wulfa1 ?? self.chr0028_Wulfa1,
            chr0028_Wulfa3: chr0028_Wulfa3 ?? self.chr0028_Wulfa3,
            chr0026_Lastrite1: chr0026_Lastrite1 ?? self.chr0026_Lastrite1,
            chr0026_Lastrite3: chr0026_Lastrite3 ?? self.chr0026_Lastrite3,
            chr0026_Lastrite5: chr0026_Lastrite5 ?? self.chr0026_Lastrite5,
            chr0026_Lastrite7: chr0026_Lastrite7 ?? self.chr0026_Lastrite7,
            chr0029_Pograni5: chr0029_Pograni5 ?? self.chr0029_Pograni5,
            chr0029_Pograni7: chr0029_Pograni7 ?? self.chr0029_Pograni7,
            chr0029_Pograni3: chr0029_Pograni3 ?? self.chr0029_Pograni3,
            chr0029_Pograni1: chr0029_Pograni1 ?? self.chr0029_Pograni1,
            chr0025_Ardelia7: chr0025_Ardelia7 ?? self.chr0025_Ardelia7,
            chr0025_Ardelia3: chr0025_Ardelia3 ?? self.chr0025_Ardelia3,
            chr0025_Ardelia1: chr0025_Ardelia1 ?? self.chr0025_Ardelia1,
            chr0025_Ardelia5: chr0025_Ardelia5 ?? self.chr0025_Ardelia5,
            chr0027_Tangtang5: chr0027_Tangtang5 ?? self.chr0027_Tangtang5,
            chr0027_Tangtang7: chr0027_Tangtang7 ?? self.chr0027_Tangtang7,
            chr0027_Tangtang1: chr0027_Tangtang1 ?? self.chr0027_Tangtang1,
            chr0027_Tangtang3: chr0027_Tangtang3 ?? self.chr0027_Tangtang3,
            chr0030_Zhuangfy1: chr0030_Zhuangfy1 ?? self.chr0030_Zhuangfy1,
            chr0030_Zhuangfy3: chr0030_Zhuangfy3 ?? self.chr0030_Zhuangfy3,
            chr0030_Zhuangfy5: chr0030_Zhuangfy5 ?? self.chr0030_Zhuangfy5,
            chr0030_Zhuangfy7: chr0030_Zhuangfy7 ?? self.chr0030_Zhuangfy7,
            chr0031_Mifu3: chr0031_Mifu3 ?? self.chr0031_Mifu3,
            chr0031_Mifu1: chr0031_Mifu1 ?? self.chr0031_Mifu1,
            chr0031_Mifu7: chr0031_Mifu7 ?? self.chr0031_Mifu7,
            chr0031_Mifu5: chr0031_Mifu5 ?? self.chr0031_Mifu5,
            chr0032_Lizhiyan5: chr0032_Lizhiyan5 ?? self.chr0032_Lizhiyan5,
            chr0032_Lizhiyan3: chr0032_Lizhiyan3 ?? self.chr0032_Lizhiyan3,
            chr0032_Lizhiyan1: chr0032_Lizhiyan1 ?? self.chr0032_Lizhiyan1,
            chr0032_Lizhiyan7: chr0032_Lizhiyan7 ?? self.chr0032_Lizhiyan7,
            chr0033_Camille1: chr0033_Camille1 ?? self.chr0033_Camille1,
            chr0033_Camille7: chr0033_Camille7 ?? self.chr0033_Camille7,
            chr0033_Camille5: chr0033_Camille5 ?? self.chr0033_Camille5,
            chr0033_Camille3: chr0033_Camille3 ?? self.chr0033_Camille3
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Chr
struct Chr: Codable {
    let the40: Int

    enum CodingKeys: String, CodingKey {
        case the40 = "40"
    }
}

// MARK: Chr convenience initializers and mutators

extension Chr {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Chr.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        the40: Int? = nil
    ) -> Chr {
        return Chr(
            the40: the40 ?? self.the40
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Chr0004_Pelica1_Class
struct Chr0004_Pelica1_Class: Codable {
    let the41: Int

    enum CodingKeys: String, CodingKey {
        case the41 = "41"
    }
}

// MARK: Chr0004_Pelica1_Class convenience initializers and mutators

extension Chr0004_Pelica1_Class {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Chr0004_Pelica1_Class.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        the41: Int? = nil
    ) -> Chr0004_Pelica1_Class {
        return Chr0004_Pelica1_Class(
            the41: the41 ?? self.the41
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Chr0006_Wolfgd1_Class
struct Chr0006_Wolfgd1_Class: Codable {
    let the39: Int

    enum CodingKeys: String, CodingKey {
        case the39 = "39"
    }
}

// MARK: Chr0006_Wolfgd1_Class convenience initializers and mutators

extension Chr0006_Wolfgd1_Class {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Chr0006_Wolfgd1_Class.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        the39: Int? = nil
    ) -> Chr0006_Wolfgd1_Class {
        return Chr0006_Wolfgd1_Class(
            the39: the39 ?? self.the39
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Chr0011_Seraph1_Class
struct Chr0011_Seraph1_Class: Codable {
    let the42: Int

    enum CodingKeys: String, CodingKey {
        case the42 = "42"
    }
}

// MARK: Chr0011_Seraph1_Class convenience initializers and mutators

extension Chr0011_Seraph1_Class {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Chr0011_Seraph1_Class.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        the42: Int? = nil
    ) -> Chr0011_Seraph1_Class {
        return Chr0011_Seraph1_Class(
            the42: the42 ?? self.the42
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - BaseAttribute
struct BaseAttribute: Codable {
    let baseValue: Double
    let addValue: Double

    enum CodingKeys: String, CodingKey {
        case baseValue = "BaseValue"
        case addValue = "AddValue"
    }
}

// MARK: BaseAttribute convenience initializers and mutators

extension BaseAttribute {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BaseAttribute.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        baseValue: Double? = nil,
        addValue: Double? = nil
    ) -> BaseAttribute {
        return BaseAttribute(
            baseValue: baseValue ?? self.baseValue,
            addValue: addValue ?? self.addValue
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Element: String, Codable {
    case cryst = "Cryst"
    case fire = "Fire"
    case natural = "Natural"
    case physical = "Physical"
    case pulse = "Pulse"
}

// MARK: - NodeSkillMap
struct NodeSkillMap: Codable {
    let icon: String
    let level: Int
    let index: Int
    let type: Int

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case level = "Level"
        case index = "Index"
        case type = "Type"
    }
}

// MARK: NodeSkillMap convenience initializers and mutators

extension NodeSkillMap {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(NodeSkillMap.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        icon: String? = nil,
        level: Int? = nil,
        index: Int? = nil,
        type: Int? = nil
    ) -> NodeSkillMap {
        return NodeSkillMap(
            icon: icon ?? self.icon,
            level: level ?? self.level,
            index: index ?? self.index,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PotAttribute
struct PotAttribute: Codable {
    let level: Int
    let attrs: [String: Attr]

    enum CodingKeys: String, CodingKey {
        case level = "Level"
        case attrs = "Attrs"
    }
}

// MARK: PotAttribute convenience initializers and mutators

extension PotAttribute {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PotAttribute.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        level: Int? = nil,
        attrs: [String: Attr]? = nil
    ) -> PotAttribute {
        return PotAttribute(
            level: level ?? self.level,
            attrs: attrs ?? self.attrs
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Attr
struct Attr: Codable {
    let value: Double
    let formula: Formula

    enum CodingKeys: String, CodingKey {
        case value = "Value"
        case formula = "Formula"
    }
}

// MARK: Attr convenience initializers and mutators

extension Attr {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Attr.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        value: Double? = nil,
        formula: Formula? = nil
    ) -> Attr {
        return Attr(
            value: value ?? self.value,
            formula: formula ?? self.formula
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Formula: String, Codable {
    case baseAddition = "BaseAddition"
    case baseMultiplier = "BaseMultiplier"
}

// MARK: - SkillInfoMap
struct SkillInfoMap: Codable {
    let icon: String
    let element: Element

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case element = "Element"
    }
}

// MARK: SkillInfoMap convenience initializers and mutators

extension SkillInfoMap {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SkillInfoMap.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        icon: String? = nil,
        element: Element? = nil
    ) -> SkillInfoMap {
        return SkillInfoMap(
            icon: icon ?? self.icon,
            element: element ?? self.element
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum WeaponType: String, Codable {
    case claymores = "Claymores"
    case lance = "Lance"
    case pistol = "Pistol"
    case sword = "Sword"
    case wand = "Wand"
}

typealias AvatarsJSON = [String: AvatarsJSONValue]

extension Dictionary where Key == String, Value == AvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AvatarsJSON.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
