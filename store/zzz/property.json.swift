// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let propertyJSON = try PropertyJSON(json)

import Foundation

// MARK: - PropertyJSONValue
struct PropertyJSONValue: Codable {
    let name: String
    let format: Format

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case format = "Format"
    }
}

// MARK: PropertyJSONValue convenience initializers and mutators

extension PropertyJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PropertyJSONValue.self, from: data)
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
        format: Format? = nil
    ) -> PropertyJSONValue {
        return PropertyJSONValue(
            name: name ?? self.name,
            format: format ?? self.format
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Format: String, Codable {
    case fluffy00 = "{0:0.##}"
    case format00 = "{0:0.#%}"
    case purple00 = "{0:0.#}"
    case the00 = "{0:0}"
}

typealias PropertyJSON = [String: PropertyJSONValue]

extension Dictionary where Key == String, Value == PropertyJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PropertyJSON.self, from: data)
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
