// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weaponsJSON = try WeaponsJSON(json)

import Foundation

// MARK: - WeaponsJSONValue
struct WeaponsJSONValue: Codable {
    let itemName: String
    let rarity: Int
    let professionType: ProfessionType
    let imagePath: String
    let mainStat, secondaryStat: Stat

    enum CodingKeys: String, CodingKey {
        case itemName = "ItemName"
        case rarity = "Rarity"
        case professionType = "ProfessionType"
        case imagePath = "ImagePath"
        case mainStat = "MainStat"
        case secondaryStat = "SecondaryStat"
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
        itemName: String? = nil,
        rarity: Int? = nil,
        professionType: ProfessionType? = nil,
        imagePath: String? = nil,
        mainStat: Stat? = nil,
        secondaryStat: Stat? = nil
    ) -> WeaponsJSONValue {
        return WeaponsJSONValue(
            itemName: itemName ?? self.itemName,
            rarity: rarity ?? self.rarity,
            professionType: professionType ?? self.professionType,
            imagePath: imagePath ?? self.imagePath,
            mainStat: mainStat ?? self.mainStat,
            secondaryStat: secondaryStat ?? self.secondaryStat
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Stat
struct Stat: Codable {
    let propertyID, propertyValue: Int

    enum CodingKeys: String, CodingKey {
        case propertyID = "PropertyId"
        case propertyValue = "PropertyValue"
    }
}

// MARK: Stat convenience initializers and mutators

extension Stat {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Stat.self, from: data)
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
        propertyID: Int? = nil,
        propertyValue: Int? = nil
    ) -> Stat {
        return Stat(
            propertyID: propertyID ?? self.propertyID,
            propertyValue: propertyValue ?? self.propertyValue
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ProfessionType: String, Codable {
    case anomaly = "Anomaly"
    case attack = "Attack"
    case defense = "Defense"
    case stun = "Stun"
    case support = "Support"
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
