// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let skillsJSON = try SkillsJSON(json)

import Foundation

// MARK: - SkillsJSONValue
struct SkillsJSONValue: Codable {
    let tagID: String
    let propMap: [String: PropMap]

    enum CodingKeys: String, CodingKey {
        case tagID = "TagId"
        case propMap = "PropMap"
    }
}

// MARK: SkillsJSONValue convenience initializers and mutators

extension SkillsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SkillsJSONValue.self, from: data)
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
        tagID: String? = nil,
        propMap: [String: PropMap]? = nil
    ) -> SkillsJSONValue {
        return SkillsJSONValue(
            tagID: tagID ?? self.tagID,
            propMap: propMap ?? self.propMap
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PropMap
struct PropMap: Codable {
    let values: [Double]
    let formula: Formula

    enum CodingKeys: String, CodingKey {
        case values = "Values"
        case formula = "Formula"
    }
}

// MARK: PropMap convenience initializers and mutators

extension PropMap {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PropMap.self, from: data)
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
        values: [Double]? = nil,
        formula: Formula? = nil
    ) -> PropMap {
        return PropMap(
            values: values ?? self.values,
            formula: formula ?? self.formula
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
    case addition = "Addition"
    case baseAddition = "BaseAddition"
    case baseFinalAddition = "BaseFinalAddition"
    case baseFinalMultiplier = "BaseFinalMultiplier"
    case baseMultiplier = "BaseMultiplier"
}

typealias SkillsJSON = [String: SkillsJSONValue]

extension Dictionary where Key == String, Value == SkillsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SkillsJSON.self, from: data)
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
