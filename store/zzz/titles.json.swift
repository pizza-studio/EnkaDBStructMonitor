// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let titlesJSON = try TitlesJSON(json)

import Foundation

// MARK: - TitlesJSONValue
struct TitlesJSONValue: Codable {
    let titleText: String
    let colorA: ColorA
    let colorB: ColorB
    let variants: [String: String]

    enum CodingKeys: String, CodingKey {
        case titleText = "TitleText"
        case colorA = "ColorA"
        case colorB = "ColorB"
        case variants = "Variants"
    }
}

// MARK: TitlesJSONValue convenience initializers and mutators

extension TitlesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TitlesJSONValue.self, from: data)
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
        titleText: String? = nil,
        colorA: ColorA? = nil,
        colorB: ColorB? = nil,
        variants: [String: String]? = nil
    ) -> TitlesJSONValue {
        return TitlesJSONValue(
            titleText: titleText ?? self.titleText,
            colorA: colorA ?? self.colorA,
            colorB: colorB ?? self.colorB,
            variants: variants ?? self.variants
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ColorA: String, Codable {
    case e6E9Ea = "e6e9ea"
    case f58661 = "f58661"
    case fab700 = "fab700"
    case ffffff = "FFFFFF"
    case the00Cefb = "00cefb"
    case the9Bf00B = "9bf00b"
}

enum ColorB: String, Codable {
    case empty = ""
    case fe357B = "fe357b"
    case fe6300 = "fe6300"
    case the0263E5 = "0263e5"
    case the107C10 = "107c10"
    case the8Ea3AE = "8ea3ae"
}

typealias TitlesJSON = [String: TitlesJSONValue]

extension Dictionary where Key == String, Value == TitlesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TitlesJSON.self, from: data)
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
