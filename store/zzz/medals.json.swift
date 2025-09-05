// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let medalsJSON = try MedalsJSON(json)

import Foundation

// MARK: - MedalsJSONValue
struct MedalsJSONValue: Codable {
    let name, icon: String
    let tipNum: TipNum

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case icon = "Icon"
        case tipNum = "TipNum"
    }
}

// MARK: MedalsJSONValue convenience initializers and mutators

extension MedalsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MedalsJSONValue.self, from: data)
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
        name: String? = nil,
        icon: String? = nil,
        tipNum: TipNum? = nil
    ) -> MedalsJSONValue {
        return MedalsJSONValue(
            name: name ?? self.name,
            icon: icon ?? self.icon,
            tipNum: tipNum ?? self.tipNum
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum TipNum: String, Codable {
    case medalTipsNum1 = "MedalTipsNum1"
    case medalTipsNum2 = "MedalTipsNum2"
}

typealias MedalsJSON = [String: MedalsJSONValue]

extension Dictionary where Key == String, Value == MedalsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MedalsJSON.self, from: data)
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
