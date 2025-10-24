// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weaponsJSON = try WeaponsJSON(json)

import Foundation

// MARK: - WeaponsJSONValue
struct WeaponsJSONValue: Codable {
    let rarity, weaponType: Int
    let icon, awakenIcon: String
    let nameTextMapHash: Int
    let baseProps, propGrowCurves: [String: Double]
    let basePromote: [Double]
    let refineProps: [String: [String: Double]]

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case weaponType = "WeaponType"
        case icon = "Icon"
        case awakenIcon = "AwakenIcon"
        case nameTextMapHash = "NameTextMapHash"
        case baseProps = "BaseProps"
        case propGrowCurves = "PropGrowCurves"
        case basePromote = "BasePromote"
        case refineProps = "RefineProps"
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
        weaponType: Int? = nil,
        icon: String? = nil,
        awakenIcon: String? = nil,
        nameTextMapHash: Int? = nil,
        baseProps: [String: Double]? = nil,
        propGrowCurves: [String: Double]? = nil,
        basePromote: [Double]? = nil,
        refineProps: [String: [String: Double]]? = nil
    ) -> WeaponsJSONValue {
        return WeaponsJSONValue(
            rarity: rarity ?? self.rarity,
            weaponType: weaponType ?? self.weaponType,
            icon: icon ?? self.icon,
            awakenIcon: awakenIcon ?? self.awakenIcon,
            nameTextMapHash: nameTextMapHash ?? self.nameTextMapHash,
            baseProps: baseProps ?? self.baseProps,
            propGrowCurves: propGrowCurves ?? self.propGrowCurves,
            basePromote: basePromote ?? self.basePromote,
            refineProps: refineProps ?? self.refineProps
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
