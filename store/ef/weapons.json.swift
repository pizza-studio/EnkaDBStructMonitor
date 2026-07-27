// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weaponsJSON = try WeaponsJSON(json)

import Foundation

// MARK: - WeaponsJSONValue
struct WeaponsJSONValue: Codable {
    let rarity: Int
    let nameHash: String
    let weaponType: WeaponType
    let icon: String
    let levelTemplateID: String
    let breakthroughTemplateID: String
    let talentTemplateID: TalentTemplateID
    let skillList: [Int]

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case nameHash = "NameHash"
        case weaponType = "WeaponType"
        case icon = "Icon"
        case levelTemplateID = "LevelTemplateId"
        case breakthroughTemplateID = "BreakthroughTemplateId"
        case talentTemplateID = "TalentTemplateId"
        case skillList = "SkillList"
    }
}

// MARK: WeaponsJSONValue convenience initializers and mutators

extension WeaponsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WeaponsJSONValue.self, from: data)
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
        rarity: Int? = nil,
        nameHash: String? = nil,
        weaponType: WeaponType? = nil,
        icon: String? = nil,
        levelTemplateID: String? = nil,
        breakthroughTemplateID: String? = nil,
        talentTemplateID: TalentTemplateID? = nil,
        skillList: [Int]? = nil
    ) -> WeaponsJSONValue {
        return WeaponsJSONValue(
            rarity: rarity ?? self.rarity,
            nameHash: nameHash ?? self.nameHash,
            weaponType: weaponType ?? self.weaponType,
            icon: icon ?? self.icon,
            levelTemplateID: levelTemplateID ?? self.levelTemplateID,
            breakthroughTemplateID: breakthroughTemplateID ?? self.breakthroughTemplateID,
            talentTemplateID: talentTemplateID ?? self.talentTemplateID,
            skillList: skillList ?? self.skillList
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum TalentTemplateID: String, Codable {
    case wpnPotential3Star = "wpn_potential_3star"
    case wpnPotential456Star = "wpn_potential_456star"
}

enum WeaponType: String, Codable {
    case claymores = "Claymores"
    case lance = "Lance"
    case pistol = "Pistol"
    case sword = "Sword"
    case wand = "Wand"
}

typealias WeaponsJSON = [String: WeaponsJSONValue]

extension Dictionary where Key == String, Value == WeaponsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WeaponsJSON.self, from: data)
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
