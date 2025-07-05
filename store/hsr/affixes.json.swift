// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let affixesJSON = try AffixesJSON(json)

import Foundation

// MARK: - AffixesJSON
struct AffixesJSON: Codable {
    let mainAffix: [String: [String: MainAffix]]
    let subAffix: [String: [String: SubAffix]]

    enum CodingKeys: String, CodingKey {
        case mainAffix = "MainAffix"
        case subAffix = "SubAffix"
    }
}

// MARK: AffixesJSON convenience initializers and mutators

extension AffixesJSON {
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

    func with(
        mainAffix: [String: [String: MainAffix]]? = nil,
        subAffix: [String: [String: SubAffix]]? = nil
    ) -> AffixesJSON {
        return AffixesJSON(
            mainAffix: mainAffix ?? self.mainAffix,
            subAffix: subAffix ?? self.subAffix
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - MainAffix
struct MainAffix: Codable {
    let property: String
    let baseValue, levelAdd: Double

    enum CodingKeys: String, CodingKey {
        case property = "Property"
        case baseValue = "BaseValue"
        case levelAdd = "LevelAdd"
    }
}

// MARK: MainAffix convenience initializers and mutators

extension MainAffix {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MainAffix.self, from: data)
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
        property: String? = nil,
        baseValue: Double? = nil,
        levelAdd: Double? = nil
    ) -> MainAffix {
        return MainAffix(
            property: property ?? self.property,
            baseValue: baseValue ?? self.baseValue,
            levelAdd: levelAdd ?? self.levelAdd
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SubAffix
struct SubAffix: Codable {
    let property: String
    let baseValue, stepValue: Double

    enum CodingKeys: String, CodingKey {
        case property = "Property"
        case baseValue = "BaseValue"
        case stepValue = "StepValue"
    }
}

// MARK: SubAffix convenience initializers and mutators

extension SubAffix {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SubAffix.self, from: data)
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
        property: String? = nil,
        baseValue: Double? = nil,
        stepValue: Double? = nil
    ) -> SubAffix {
        return SubAffix(
            property: property ?? self.property,
            baseValue: baseValue ?? self.baseValue,
            stepValue: stepValue ?? self.stepValue
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
