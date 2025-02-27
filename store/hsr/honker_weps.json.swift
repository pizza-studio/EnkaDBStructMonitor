// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerWepsJSON = try HonkerWepsJSON(json)

import Foundation

// MARK: - HonkerWepsJSONValue
struct HonkerWepsJSONValue: Codable {
    let rarity: Int
    let avatarBaseType: AvatarBaseType
    let equipmentName: EquipmentName
    let imagePath: String

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case avatarBaseType = "AvatarBaseType"
        case equipmentName = "EquipmentName"
        case imagePath = "ImagePath"
    }
}

// MARK: HonkerWepsJSONValue convenience initializers and mutators

extension HonkerWepsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerWepsJSONValue.self, from: data)
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
        imagePath: String? = nil
    ) -> HonkerWepsJSONValue {
        return HonkerWepsJSONValue(
            rarity: rarity ?? self.rarity,
            avatarBaseType: avatarBaseType ?? self.avatarBaseType,
            equipmentName: equipmentName ?? self.equipmentName,
            imagePath: imagePath ?? self.imagePath
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

typealias HonkerWepsJSON = [String: HonkerWepsJSONValue]

extension Dictionary where Key == String, Value == HonkerWepsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerWepsJSON.self, from: data)
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
