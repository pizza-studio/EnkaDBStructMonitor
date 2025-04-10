// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerRelicsJSON = try HonkerRelicsJSON(json)

import Foundation

// MARK: - HonkerRelicsJSONValue
struct HonkerRelicsJSONValue: Codable {
    let icon: String
    let mainAffixGroup, rarity, setID, subAffixGroup: Int
    let type: TypeEnum

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case mainAffixGroup = "MainAffixGroup"
        case rarity = "Rarity"
        case setID = "SetID"
        case subAffixGroup = "SubAffixGroup"
        case type = "Type"
    }
}

// MARK: HonkerRelicsJSONValue convenience initializers and mutators

extension HonkerRelicsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerRelicsJSONValue.self, from: data)
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
        mainAffixGroup: Int? = nil,
        rarity: Int? = nil,
        setID: Int? = nil,
        subAffixGroup: Int? = nil,
        type: TypeEnum? = nil
    ) -> HonkerRelicsJSONValue {
        return HonkerRelicsJSONValue(
            icon: icon ?? self.icon,
            mainAffixGroup: mainAffixGroup ?? self.mainAffixGroup,
            rarity: rarity ?? self.rarity,
            setID: setID ?? self.setID,
            subAffixGroup: subAffixGroup ?? self.subAffixGroup,
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

enum TypeEnum: String, Codable {
    case body = "BODY"
    case foot = "FOOT"
    case hand = "HAND"
    case head = "HEAD"
    case neck = "NECK"
    case object = "OBJECT"
}

typealias HonkerRelicsJSON = [String: HonkerRelicsJSONValue]

extension Dictionary where Key == String, Value == HonkerRelicsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerRelicsJSON.self, from: data)
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
