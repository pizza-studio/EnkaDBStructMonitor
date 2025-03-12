// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let avatarsJSON = try AvatarsJSON(json)

import Foundation

// MARK: - AvatarsJSONValue
struct AvatarsJSONValue: Codable {
    let name: String
    let rarity: Int
    let professionType: ProfessionType
    let elementTypes: [String]
    let image, circleIcon: String
    let weaponID: Int
    let skins: [String: Skin]
    let colors: Colors
    let highlightProps: [Int]
    let baseProps, growthProps: [String: Int]
    let promotionProps, coreEnhancementProps: [[String: Int]]

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case rarity = "Rarity"
        case professionType = "ProfessionType"
        case elementTypes = "ElementTypes"
        case image = "Image"
        case circleIcon = "CircleIcon"
        case weaponID = "WeaponId"
        case skins = "Skins"
        case colors = "Colors"
        case highlightProps = "HighlightProps"
        case baseProps = "BaseProps"
        case growthProps = "GrowthProps"
        case promotionProps = "PromotionProps"
        case coreEnhancementProps = "CoreEnhancementProps"
    }
}

// MARK: AvatarsJSONValue convenience initializers and mutators

extension AvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AvatarsJSONValue.self, from: data)
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
        rarity: Int? = nil,
        professionType: ProfessionType? = nil,
        elementTypes: [String]? = nil,
        image: String? = nil,
        circleIcon: String? = nil,
        weaponID: Int? = nil,
        skins: [String: Skin]? = nil,
        colors: Colors? = nil,
        highlightProps: [Int]? = nil,
        baseProps: [String: Int]? = nil,
        growthProps: [String: Int]? = nil,
        promotionProps: [[String: Int]]? = nil,
        coreEnhancementProps: [[String: Int]]? = nil
    ) -> AvatarsJSONValue {
        return AvatarsJSONValue(
            name: name ?? self.name,
            rarity: rarity ?? self.rarity,
            professionType: professionType ?? self.professionType,
            elementTypes: elementTypes ?? self.elementTypes,
            image: image ?? self.image,
            circleIcon: circleIcon ?? self.circleIcon,
            weaponID: weaponID ?? self.weaponID,
            skins: skins ?? self.skins,
            colors: colors ?? self.colors,
            highlightProps: highlightProps ?? self.highlightProps,
            baseProps: baseProps ?? self.baseProps,
            growthProps: growthProps ?? self.growthProps,
            promotionProps: promotionProps ?? self.promotionProps,
            coreEnhancementProps: coreEnhancementProps ?? self.coreEnhancementProps
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Colors
struct Colors: Codable {
    let accent, mindscape: String

    enum CodingKeys: String, CodingKey {
        case accent = "Accent"
        case mindscape = "Mindscape"
    }
}

// MARK: Colors convenience initializers and mutators

extension Colors {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Colors.self, from: data)
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
        accent: String? = nil,
        mindscape: String? = nil
    ) -> Colors {
        return Colors(
            accent: accent ?? self.accent,
            mindscape: mindscape ?? self.mindscape
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ProfessionType: String, Codable {
    case anomaly = "Anomaly"
    case attack = "Attack"
    case defense = "Defense"
    case stun = "Stun"
    case support = "Support"
}

// MARK: - Skin
struct Skin: Codable {
    let image, circleIcon: String

    enum CodingKeys: String, CodingKey {
        case image = "Image"
        case circleIcon = "CircleIcon"
    }
}

// MARK: Skin convenience initializers and mutators

extension Skin {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Skin.self, from: data)
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
        image: String? = nil,
        circleIcon: String? = nil
    ) -> Skin {
        return Skin(
            image: image ?? self.image,
            circleIcon: circleIcon ?? self.circleIcon
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias AvatarsJSON = [String: AvatarsJSONValue]

extension Dictionary where Key == String, Value == AvatarsJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AvatarsJSON.self, from: data)
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
