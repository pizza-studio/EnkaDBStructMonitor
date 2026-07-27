// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let gemsJSON = try GemsJSON(json)

import Foundation

// MARK: - GemsJSON
struct GemsJSON: Codable {
    let termNums: [String: TermNum]
    let templateItems: [String: TemplateItem]

    enum CodingKeys: String, CodingKey {
        case termNums = "TermNums"
        case templateItems = "TemplateItems"
    }
}

// MARK: GemsJSON convenience initializers and mutators

extension GemsJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GemsJSON.self, from: data)
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
        termNums: [String: TermNum]? = nil,
        templateItems: [String: TemplateItem]? = nil
    ) -> GemsJSON {
        return GemsJSON(
            termNums: termNums ?? self.termNums,
            templateItems: templateItems ?? self.templateItems
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - TemplateItem
struct TemplateItem: Codable {
    let icon: String

    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
    }
}

// MARK: TemplateItem convenience initializers and mutators

extension TemplateItem {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TemplateItem.self, from: data)
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
    ) -> TemplateItem {
        return TemplateItem(
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

// MARK: - TermNum
struct TermNum: Codable {
    let termType: Int
    let tagID: String
    let tagIcon: String
    let tagNameHash: String

    enum CodingKeys: String, CodingKey {
        case termType = "TermType"
        case tagID = "TagId"
        case tagIcon = "TagIcon"
        case tagNameHash = "TagNameHash"
    }
}

// MARK: TermNum convenience initializers and mutators

extension TermNum {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TermNum.self, from: data)
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
        termType: Int? = nil,
        tagID: String? = nil,
        tagIcon: String? = nil,
        tagNameHash: String? = nil
    ) -> TermNum {
        return TermNum(
            termType: termType ?? self.termType,
            tagID: tagID ?? self.tagID,
            tagIcon: tagIcon ?? self.tagIcon,
            tagNameHash: tagNameHash ?? self.tagNameHash
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
