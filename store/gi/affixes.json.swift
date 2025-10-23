// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let affixesJSON = try AffixesJSON(json)

import Foundation

// MARK: - AffixesJSONValue
struct AffixesJSONValue: Codable {
    let propType: Int
    let efficiency: Double
    let position: Int
    let value: Double

    enum CodingKeys: String, CodingKey {
        case propType = "PropType"
        case efficiency = "Efficiency"
        case position = "Position"
        case value = "Value"
    }
}

// MARK: AffixesJSONValue convenience initializers and mutators

extension AffixesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AffixesJSONValue.self, from: data)
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
        propType: Int? = nil,
        efficiency: Double? = nil,
        position: Int? = nil,
        value: Double? = nil
    ) -> AffixesJSONValue {
        return AffixesJSONValue(
            propType: propType ?? self.propType,
            efficiency: efficiency ?? self.efficiency,
            position: position ?? self.position,
            value: value ?? self.value
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias AffixesJSON = [String: AffixesJSONValue]

extension Dictionary where Key == String, Value == AffixesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AffixesJSON.self, from: data)
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
