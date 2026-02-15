// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weaponsJSON = try WeaponsJSON(json)

import Foundation

// MARK: - WeaponsJSONValue
struct WeaponsJSONValue: Codable {
    let rarity: Int
    let avatarBaseType: AvatarBaseType
    let equipmentName: EquipmentName
    let imagePath: String
    let promotion: [String: Promotion]
    let equipmentSkill: [String: EquipmentSkill]

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case avatarBaseType = "AvatarBaseType"
        case equipmentName = "EquipmentName"
        case imagePath = "ImagePath"
        case promotion = "Promotion"
        case equipmentSkill = "EquipmentSkill"
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
        avatarBaseType: AvatarBaseType? = nil,
        equipmentName: EquipmentName? = nil,
        imagePath: String? = nil,
        promotion: [String: Promotion]? = nil,
        equipmentSkill: [String: EquipmentSkill]? = nil
    ) -> WeaponsJSONValue {
        return WeaponsJSONValue(
            rarity: rarity ?? self.rarity,
            avatarBaseType: avatarBaseType ?? self.avatarBaseType,
            equipmentName: equipmentName ?? self.equipmentName,
            imagePath: imagePath ?? self.imagePath,
            promotion: promotion ?? self.promotion,
            equipmentSkill: equipmentSkill ?? self.equipmentSkill
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

// MARK: - EquipmentName
struct EquipmentName: Codable {
    let hash: String

    enum CodingKeys: String, CodingKey {
        case hash = "Hash"
    }
}

// MARK: EquipmentName convenience initializers and mutators

extension EquipmentName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EquipmentName.self, from: data)
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
    ) -> EquipmentName {
        return EquipmentName(
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

// MARK: - EquipmentSkill
struct EquipmentSkill: Codable {
    let props: [String: Double]
}

// MARK: EquipmentSkill convenience initializers and mutators

extension EquipmentSkill {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EquipmentSkill.self, from: data)
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
        props: [String: Double]? = nil
    ) -> EquipmentSkill {
        return EquipmentSkill(
            props: props ?? self.props
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Promotion
struct Promotion: Codable {
    let baseHP, baseHPAdd, baseAttack, baseAttackAdd: Double
    let baseDefence, baseDefenceAdd: Double

    enum CodingKeys: String, CodingKey {
        case baseHP = "BaseHP"
        case baseHPAdd = "BaseHPAdd"
        case baseAttack = "BaseAttack"
        case baseAttackAdd = "BaseAttackAdd"
        case baseDefence = "BaseDefence"
        case baseDefenceAdd = "BaseDefenceAdd"
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
        baseHP: Double? = nil,
        baseHPAdd: Double? = nil,
        baseAttack: Double? = nil,
        baseAttackAdd: Double? = nil,
        baseDefence: Double? = nil,
        baseDefenceAdd: Double? = nil
    ) -> Promotion {
        return Promotion(
            baseHP: baseHP ?? self.baseHP,
            baseHPAdd: baseHPAdd ?? self.baseHPAdd,
            baseAttack: baseAttack ?? self.baseAttack,
            baseAttackAdd: baseAttackAdd ?? self.baseAttackAdd,
            baseDefence: baseDefence ?? self.baseDefence,
            baseDefenceAdd: baseDefenceAdd ?? self.baseDefenceAdd
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
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
