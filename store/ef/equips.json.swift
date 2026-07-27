// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let equipsJSON = try EquipsJSON(json)

import Foundation

// MARK: - EquipsJSON
struct EquipsJSON: Codable {
    let items: [String: Item]
    let suits: [String: Suit]

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case suits = "Suits"
    }
}

// MARK: EquipsJSON convenience initializers and mutators

extension EquipsJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EquipsJSON.self, from: data)
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
        items: [String: Item]? = nil,
        suits: [String: Suit]? = nil
    ) -> EquipsJSON {
        return EquipsJSON(
            items: items ?? self.items,
            suits: suits ?? self.suits
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Item
struct Item: Codable {
    let rarity: Int
    let icon: String
    let suitID: String
    let attrModifiers: [AttrModifier]

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case icon = "Icon"
        case suitID = "SuitId"
        case attrModifiers = "AttrModifiers"
    }
}

// MARK: Item convenience initializers and mutators

extension Item {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Item.self, from: data)
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
        icon: String? = nil,
        suitID: String? = nil,
        attrModifiers: [AttrModifier]? = nil
    ) -> Item {
        return Item(
            rarity: rarity ?? self.rarity,
            icon: icon ?? self.icon,
            suitID: suitID ?? self.suitID,
            attrModifiers: attrModifiers ?? self.attrModifiers
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AttrModifier
struct AttrModifier: Codable {
    let attrType: Int
    let formula: Formula
    let values: [Double]

    enum CodingKeys: String, CodingKey {
        case attrType = "AttrType"
        case formula = "Formula"
        case values = "Values"
    }
}

// MARK: AttrModifier convenience initializers and mutators

extension AttrModifier {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AttrModifier.self, from: data)
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
        attrType: Int? = nil,
        formula: Formula? = nil,
        values: [Double]? = nil
    ) -> AttrModifier {
        return AttrModifier(
            attrType: attrType ?? self.attrType,
            formula: formula ?? self.formula,
            values: values ?? self.values
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
    case baseFinalAddition = "BaseFinalAddition"
    case baseFinalMultiplier = "BaseFinalMultiplier"
    case baseMultiplier = "BaseMultiplier"
}

// MARK: - Suit
struct Suit: Codable {
    let icon: String
    let nameHash: String
    let skillID: Int

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case nameHash = "NameHash"
        case skillID = "SkillId"
    }
}

// MARK: Suit convenience initializers and mutators

extension Suit {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Suit.self, from: data)
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
        nameHash: String? = nil,
        skillID: Int? = nil
    ) -> Suit {
        return Suit(
            icon: icon ?? self.icon,
            nameHash: nameHash ?? self.nameHash,
            skillID: skillID ?? self.skillID
        )
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
