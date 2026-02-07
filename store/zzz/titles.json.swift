// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let titlesJSON = try TitlesJSON(json)

import Foundation

// MARK: - TitlesJSON
struct TitlesJSON: Codable {
    let titles: [String: Title]
    let titleVariants: [String: TitleVariant]

    enum CodingKeys: String, CodingKey {
        case titles = "Titles"
        case titleVariants = "TitleVariants"
    }
}

// MARK: TitlesJSON convenience initializers and mutators

extension TitlesJSON {
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

    func with(
        titles: [String: Title]? = nil,
        titleVariants: [String: TitleVariant]? = nil
    ) -> TitlesJSON {
        return TitlesJSON(
            titles: titles ?? self.titles,
            titleVariants: titleVariants ?? self.titleVariants
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - TitleVariant
struct TitleVariant: Codable {
    let titleText: TitleText

    enum CodingKeys: String, CodingKey {
        case titleText = "TitleText"
    }
}

// MARK: TitleVariant convenience initializers and mutators

extension TitleVariant {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TitleVariant.self, from: data)
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
        titleText: TitleText? = nil
    ) -> TitleVariant {
        return TitleVariant(
            titleText: titleText ?? self.titleText
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum TitleText: String, Codable {
    case titleText3809999 = "TitleText_3809999"
}

// MARK: - Title
struct Title: Codable {
    let titleText: String
    let colorA: ColorA
    let colorB: ColorB

    enum CodingKeys: String, CodingKey {
        case titleText = "TitleText"
        case colorA = "ColorA"
        case colorB = "ColorB"
    }
}

// MARK: Title convenience initializers and mutators

extension Title {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Title.self, from: data)
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
        colorB: ColorB? = nil
    ) -> Title {
        return Title(
            titleText: titleText ?? self.titleText,
            colorA: colorA ?? self.colorA,
            colorB: colorB ?? self.colorB
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
    case ffffff = "ffffff"
    case the00Cefb = "00cefb"
    case the9Bf00B = "9bf00b"
}

enum ColorB: String, Codable {
    case fe357B = "fe357b"
    case fe6300 = "fe6300"
    case ffffff = "ffffff"
    case the0263E5 = "0263e5"
    case the107C10 = "107c10"
    case the8Ea3AE = "8ea3ae"
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
