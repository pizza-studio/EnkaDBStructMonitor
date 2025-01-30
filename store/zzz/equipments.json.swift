// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let equipmentsJSON = try EquipmentsJSON(json)

import Foundation

// MARK: - EquipmentsJSON
struct EquipmentsJSON: Codable {
    let items: [String: Item]
    let suits: [String: Suit]

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case suits = "Suits"
    }
}

// MARK: EquipmentsJSON convenience initializers and mutators

extension EquipmentsJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EquipmentsJSON.self, from: data)
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
    ) -> EquipmentsJSON {
        return EquipmentsJSON(
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
    let rarity, suitID: Int

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case suitID = "SuitId"
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
        suitID: Int? = nil
    ) -> Item {
        return Item(
            rarity: rarity ?? self.rarity,
            suitID: suitID ?? self.suitID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Suit
struct Suit: Codable {
    let icon, name: String
    let setBonusProps: [String: Int]

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case name = "Name"
        case setBonusProps = "SetBonusProps"
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
        name: String? = nil,
        setBonusProps: [String: Int]? = nil
    ) -> Suit {
        return Suit(
            icon: icon ?? self.icon,
            name: name ?? self.name,
            setBonusProps: setBonusProps ?? self.setBonusProps
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
