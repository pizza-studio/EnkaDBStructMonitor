// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let locsJSON = try LocsJSON(json)

import Foundation

// MARK: - LocsJSON
struct LocsJSON: Codable {
    let zhTw: [String: String]
    let zhCN: [String: String]
    let en: [String: String]
    let es: [String: String]
    let ja: [String: String]
    let ko: [String: String]
    let ru: [String: String]
    let de: [String: String]
    let fr: [String: String]
    let id: [String: String]
    let pt: [String: String]
    let th: [String: String]
    let it: [String: String]
    let vi: [String: String]

    enum CodingKeys: String, CodingKey {
        case zhTw = "zh-tw"
        case zhCN = "zh-cn"
        case en = "en"
        case es = "es"
        case ja = "ja"
        case ko = "ko"
        case ru = "ru"
        case de = "de"
        case fr = "fr"
        case id = "id"
        case pt = "pt"
        case th = "th"
        case it = "it"
        case vi = "vi"
    }
}

// MARK: LocsJSON convenience initializers and mutators

extension LocsJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LocsJSON.self, from: data)
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
        zhTw: [String: String]? = nil,
        zhCN: [String: String]? = nil,
        en: [String: String]? = nil,
        es: [String: String]? = nil,
        ja: [String: String]? = nil,
        ko: [String: String]? = nil,
        ru: [String: String]? = nil,
        de: [String: String]? = nil,
        fr: [String: String]? = nil,
        id: [String: String]? = nil,
        pt: [String: String]? = nil,
        th: [String: String]? = nil,
        it: [String: String]? = nil,
        vi: [String: String]? = nil
    ) -> LocsJSON {
        return LocsJSON(
            zhTw: zhTw ?? self.zhTw,
            zhCN: zhCN ?? self.zhCN,
            en: en ?? self.en,
            es: es ?? self.es,
            ja: ja ?? self.ja,
            ko: ko ?? self.ko,
            ru: ru ?? self.ru,
            de: de ?? self.de,
            fr: fr ?? self.fr,
            id: id ?? self.id,
            pt: pt ?? self.pt,
            th: th ?? self.th,
            it: it ?? self.it,
            vi: vi ?? self.vi
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
