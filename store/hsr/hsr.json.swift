// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hsrJSON = try HsrJSON(json)

import Foundation

// MARK: - HsrJSON
struct HsrJSON: Codable {
    let en, ru, vi, th: [String: String]
    let pt, ko, ja, id: [String: String]
    let fr, es, de, zhTw: [String: String]
    let zhCN: [String: String]

    enum CodingKeys: String, CodingKey {
        case en, ru, vi, th, pt, ko, ja, id, fr, es, de
        case zhTw = "zh-tw"
        case zhCN = "zh-cn"
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
        en: [String: String]? = nil,
        ru: [String: String]? = nil,
        vi: [String: String]? = nil,
        th: [String: String]? = nil,
        pt: [String: String]? = nil,
        ko: [String: String]? = nil,
        ja: [String: String]? = nil,
        id: [String: String]? = nil,
        fr: [String: String]? = nil,
        es: [String: String]? = nil,
        de: [String: String]? = nil,
        zhTw: [String: String]? = nil,
        zhCN: [String: String]? = nil
    ) -> HsrJSON {
        return HsrJSON(
            en: en ?? self.en,
            ru: ru ?? self.ru,
            vi: vi ?? self.vi,
            th: th ?? self.th,
            pt: pt ?? self.pt,
            ko: ko ?? self.ko,
            ja: ja ?? self.ja,
            id: id ?? self.id,
            fr: fr ?? self.fr,
            es: es ?? self.es,
            de: de ?? self.de,
            zhTw: zhTw ?? self.zhTw,
            zhCN: zhCN ?? self.zhCN
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
