// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let avatarsJSON = try AvatarsJSON(json)

import Foundation

// MARK: - AvatarsJSONValue
struct AvatarsJSONValue: Codable {
    let avatarName: AvatarName
    let avatarFullName: AvatarName
    let rarity: Int
    let element: Element
    let avatarBaseType: AvatarBaseType
    let avatarSideIconPath: String
    let actionAvatarHeadIconPath: String
    let avatarCutinFrontImgPath: String
    let rankIDList: [Int]
    let skillList: [Int]
    let skins: [String: Skin]
    let skillTree: [String: SkillTree]
    let promotion: [String: Promotion]

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
        case skins = "Skins"
        case skillTree = "SkillTree"
        case promotion = "Promotion"
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
        avatarName: AvatarName? = nil,
        avatarFullName: AvatarName? = nil,
        rarity: Int? = nil,
        element: Element? = nil,
        avatarBaseType: AvatarBaseType? = nil,
        avatarSideIconPath: String? = nil,
        actionAvatarHeadIconPath: String? = nil,
        avatarCutinFrontImgPath: String? = nil,
        rankIDList: [Int]? = nil,
        skillList: [Int]? = nil,
        skins: [String: Skin]? = nil,
        skillTree: [String: SkillTree]? = nil,
        promotion: [String: Promotion]? = nil
    ) -> AvatarsJSONValue {
        return AvatarsJSONValue(
            avatarName: avatarName ?? self.avatarName,
            avatarFullName: avatarFullName ?? self.avatarFullName,
            rarity: rarity ?? self.rarity,
            element: element ?? self.element,
            avatarBaseType: avatarBaseType ?? self.avatarBaseType,
            avatarSideIconPath: avatarSideIconPath ?? self.avatarSideIconPath,
            actionAvatarHeadIconPath: actionAvatarHeadIconPath ?? self.actionAvatarHeadIconPath,
            avatarCutinFrontImgPath: avatarCutinFrontImgPath ?? self.avatarCutinFrontImgPath,
            rankIDList: rankIDList ?? self.rankIDList,
            skillList: skillList ?? self.skillList,
            skins: skins ?? self.skins,
            skillTree: skillTree ?? self.skillTree,
            promotion: promotion ?? self.promotion
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
    case elation = "Elation"
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
    let hash: String

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
        hash: String? = nil
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

// MARK: - Promotion
struct Promotion: Codable {
    let attackAdd: Double
    let attackBase: Double
    let baseAggro: Int
    let criticalChance: Double
    let criticalDamage: Double
    let defenceAdd: Double
    let defenceBase: Double
    let hpAdd: Double
    let hpBase: Double
    let speedBase: Int

    enum CodingKeys: String, CodingKey {
        case attackAdd = "AttackAdd"
        case attackBase = "AttackBase"
        case baseAggro = "BaseAggro"
        case criticalChance = "CriticalChance"
        case criticalDamage = "CriticalDamage"
        case defenceAdd = "DefenceAdd"
        case defenceBase = "DefenceBase"
        case hpAdd = "HPAdd"
        case hpBase = "HPBase"
        case speedBase = "SpeedBase"
    }
}

// MARK: Promotion convenience initializers and mutators

extension Promotion {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Promotion.self, from: data)
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
        attackAdd: Double? = nil,
        attackBase: Double? = nil,
        baseAggro: Int? = nil,
        criticalChance: Double? = nil,
        criticalDamage: Double? = nil,
        defenceAdd: Double? = nil,
        defenceBase: Double? = nil,
        hpAdd: Double? = nil,
        hpBase: Double? = nil,
        speedBase: Int? = nil
    ) -> Promotion {
        return Promotion(
            attackAdd: attackAdd ?? self.attackAdd,
            attackBase: attackBase ?? self.attackBase,
            baseAggro: baseAggro ?? self.baseAggro,
            criticalChance: criticalChance ?? self.criticalChance,
            criticalDamage: criticalDamage ?? self.criticalDamage,
            defenceAdd: defenceAdd ?? self.defenceAdd,
            defenceBase: defenceBase ?? self.defenceBase,
            hpAdd: hpAdd ?? self.hpAdd,
            hpBase: hpBase ?? self.hpBase,
            speedBase: speedBase ?? self.speedBase
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SkillTree
struct SkillTree: Codable {
    let avatarSkills: [Int]
    let propSkills: [[Int]]
    let summonSkills: [[Int]]

    enum CodingKeys: String, CodingKey {
        case avatarSkills = "AvatarSkills"
        case propSkills = "PropSkills"
        case summonSkills = "SummonSkills"
    }
}

// MARK: SkillTree convenience initializers and mutators

extension SkillTree {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SkillTree.self, from: data)
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
        avatarSkills: [Int]? = nil,
        propSkills: [[Int]]? = nil,
        summonSkills: [[Int]]? = nil
    ) -> SkillTree {
        return SkillTree(
            avatarSkills: avatarSkills ?? self.avatarSkills,
            propSkills: propSkills ?? self.propSkills,
            summonSkills: summonSkills ?? self.summonSkills
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Skin
struct Skin: Codable {
    let avatarSideIconPath: String
    let avatarCutinFrontImgPath: String

    enum CodingKeys: String, CodingKey {
        case avatarSideIconPath = "AvatarSideIconPath"
        case avatarCutinFrontImgPath = "AvatarCutinFrontImgPath"
    }
}

// MARK: Skin convenience initializers and mutators

extension Skin {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Skin.self, from: data)
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
        avatarSideIconPath: String? = nil,
        avatarCutinFrontImgPath: String? = nil
    ) -> Skin {
        return Skin(
            avatarSideIconPath: avatarSideIconPath ?? self.avatarSideIconPath,
            avatarCutinFrontImgPath: avatarCutinFrontImgPath ?? self.avatarCutinFrontImgPath
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
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
