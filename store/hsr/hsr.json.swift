// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hsrJSON = try HsrJSON(json)

import Foundation

// MARK: - HsrJSON
struct HsrJSON: Codable {
    let zhCN, zhTw, de, en: [String: String]
    let es, fr, id, ja: [String: String]
    let ko, pt, ru, th: [String: String]
    let vi: [String: String]

    enum CodingKeys: String, CodingKey {
        case zhCN = "zh-cn"
        case zhTw = "zh-tw"
        case de, en, es, fr, id, ja, ko, pt, ru, th, vi
    }
}

// MARK: HsrJSON convenience initializers and mutators

extension HsrJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HsrJSON.self, from: data)
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
        zhCN: [String: String]? = nil,
        zhTw: [String: String]? = nil,
        de: [String: String]? = nil,
        en: [String: String]? = nil,
        es: [String: String]? = nil,
        fr: [String: String]? = nil,
        id: [String: String]? = nil,
        ja: [String: String]? = nil,
        ko: [String: String]? = nil,
        pt: [String: String]? = nil,
        ru: [String: String]? = nil,
        th: [String: String]? = nil,
        vi: [String: String]? = nil
    ) -> HsrJSON {
        return HsrJSON(
            zhCN: zhCN ?? self.zhCN,
            zhTw: zhTw ?? self.zhTw,
            de: de ?? self.de,
            en: en ?? self.en,
            es: es ?? self.es,
            fr: fr ?? self.fr,
            id: id ?? self.id,
            ja: ja ?? self.ja,
            ko: ko ?? self.ko,
            pt: pt ?? self.pt,
            ru: ru ?? self.ru,
            th: th ?? self.th,
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
