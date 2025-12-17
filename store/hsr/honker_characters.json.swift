// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerCharactersJSON = try HonkerCharactersJSON(json)

import Foundation

// MARK: - HonkerCharactersJSONValue
struct HonkerCharactersJSONValue: Codable {
    let avatarName, avatarFullName: AvatarName
    let rarity: Int
    let element: Element
    let avatarBaseType: AvatarBaseType
    let avatarSideIconPath, actionAvatarHeadIconPath, avatarCutinFrontImgPath: String
    let rankIDList, skillList: [Int]

    enum CodingKeys: String, CodingKey {
        case avatarName = "AvatarName"
        case avatarFullName = "AvatarFullName"
        case rarity = "Rarity"
        case element = "Element"
        case avatarBaseType = "AvatarBaseType"
        case avatarSideIconPath = "AvatarSideIconPath"
        case actionAvatarHeadIconPath = "ActionAvatarHeadIconPath"
        case avatarCutinFrontImgPath = "AvatarCutinFrontImgPath"
        case rankIDList = "RankIDList"
        case skillList = "SkillList"
    }
}

// MARK: HonkerCharactersJSONValue convenience initializers and mutators

extension HonkerCharactersJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerCharactersJSONValue.self, from: data)
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
        avatarName: AvatarName? = nil,
        avatarFullName: AvatarName? = nil,
        rarity: Int? = nil,
        element: Element? = nil,
        avatarBaseType: AvatarBaseType? = nil,
        avatarSideIconPath: String? = nil,
        actionAvatarHeadIconPath: String? = nil,
        avatarCutinFrontImgPath: String? = nil,
        rankIDList: [Int]? = nil,
        skillList: [Int]? = nil
    ) -> HonkerCharactersJSONValue {
        return HonkerCharactersJSONValue(
            avatarName: avatarName ?? self.avatarName,
            avatarFullName: avatarFullName ?? self.avatarFullName,
            rarity: rarity ?? self.rarity,
            element: element ?? self.element,
            avatarBaseType: avatarBaseType ?? self.avatarBaseType,
            avatarSideIconPath: avatarSideIconPath ?? self.avatarSideIconPath,
            actionAvatarHeadIconPath: actionAvatarHeadIconPath ?? self.actionAvatarHeadIconPath,
            avatarCutinFrontImgPath: avatarCutinFrontImgPath ?? self.avatarCutinFrontImgPath,
            rankIDList: rankIDList ?? self.rankIDList,
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

enum AvatarBaseType: String, Codable {
    case knight = "Knight"
    case mage = "Mage"
    case memory = "Memory"
    case priest = "Priest"
    case rogue = "Rogue"
    case shaman = "Shaman"
    case warlock = "Warlock"
    case warrior = "Warrior"
}

// MARK: - AvatarName
struct AvatarName: Codable {
    let hash: Int

    enum CodingKeys: String, CodingKey {
        case hash = "Hash"
    }
}

// MARK: AvatarName convenience initializers and mutators

extension AvatarName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AvatarName.self, from: data)
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
        hash: Int? = nil
    ) -> AvatarName {
        return AvatarName(
            hash: hash ?? self.hash
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
    case fire = "Fire"
    case ice = "Ice"
    case imaginary = "Imaginary"
    case physical = "Physical"
    case quantum = "Quantum"
    case thunder = "Thunder"
    case wind = "Wind"
}

typealias HonkerCharactersJSON = [String: HonkerCharactersJSONValue]

extension Dictionary where Key == String, Value == HonkerCharactersJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerCharactersJSON.self, from: data)
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
