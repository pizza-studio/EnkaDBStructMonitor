// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerRelicsJSON = try HonkerRelicsJSON(json)

import Foundation

// MARK: - HonkerRelicsJSONValue
struct HonkerRelicsJSONValue: Codable {
    let rarity: Int
    let type: TypeEnum
    let mainAffixGroup, subAffixGroup: Int
    let icon: String
    let setID: Int

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case type = "Type"
        case mainAffixGroup = "MainAffixGroup"
        case subAffixGroup = "SubAffixGroup"
        case icon = "Icon"
        case setID = "SetID"
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
        rarity: Int? = nil,
        type: TypeEnum? = nil,
        mainAffixGroup: Int? = nil,
        subAffixGroup: Int? = nil,
        icon: String? = nil,
        setID: Int? = nil
    ) -> HonkerRelicsJSONValue {
        return HonkerRelicsJSONValue(
            rarity: rarity ?? self.rarity,
            type: type ?? self.type,
            mainAffixGroup: mainAffixGroup ?? self.mainAffixGroup,
            subAffixGroup: subAffixGroup ?? self.subAffixGroup,
            icon: icon ?? self.icon,
            setID: setID ?? self.setID
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
