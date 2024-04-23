// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerRanksJSON = try HonkerRanksJSON(json)

import Foundation

// MARK: - HonkerRanksJSONValue
struct HonkerRanksJSONValue: Codable {
    let iconPath: String
    let skillAddLevelList: [String: Int]

    enum CodingKeys: String, CodingKey {
        case iconPath = "IconPath"
        case skillAddLevelList = "SkillAddLevelList"
    }
}

// MARK: HonkerRanksJSONValue convenience initializers and mutators

extension HonkerRanksJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerRanksJSONValue.self, from: data)
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
        iconPath: String? = nil,
        skillAddLevelList: [String: Int]? = nil
    ) -> HonkerRanksJSONValue {
        return HonkerRanksJSONValue(
            iconPath: iconPath ?? self.iconPath,
            skillAddLevelList: skillAddLevelList ?? self.skillAddLevelList
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias HonkerRanksJSON = [String: HonkerRanksJSONValue]

extension Dictionary where Key == String, Value == HonkerRanksJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerRanksJSON.self, from: data)
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
