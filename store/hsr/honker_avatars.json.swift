// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerAvatarsJSON = try HonkerAvatarsJSON(json)

import Foundation

// MARK: - HonkerAvatarsJSONValue
struct HonkerAvatarsJSONValue: Codable {
    let icon: String

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
    }
}

// MARK: HonkerAvatarsJSONValue convenience initializers and mutators

extension HonkerAvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerAvatarsJSONValue.self, from: data)
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
        icon: String? = nil
    ) -> HonkerAvatarsJSONValue {
        return HonkerAvatarsJSONValue(
            icon: icon ?? self.icon
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias HonkerAvatarsJSON = [String: HonkerAvatarsJSONValue]

extension Dictionary where Key == String, Value == HonkerAvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerAvatarsJSON.self, from: data)
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
