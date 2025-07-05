// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let relicsJSON = try RelicsJSON(json)

import Foundation

// MARK: - RelicsJSON
struct RelicsJSON: Codable {
    let items: [String: Item]
    let sets: [String: Set]

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case sets = "Sets"
    }
}

// MARK: RelicsJSON convenience initializers and mutators

extension RelicsJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RelicsJSON.self, from: data)
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
        items: [String: Item]? = nil,
        sets: [String: Set]? = nil
    ) -> RelicsJSON {
        return RelicsJSON(
            items: items ?? self.items,
            sets: sets ?? self.sets
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Item
struct Item: Codable {
    let rarity: Int
    let type: TypeEnum
    let mainAffixGroup, subAffixGroup: Int
    let icon: String
    let setID: Int

    enum CodingKeys: String, CodingKey {
        case rarity = "Rarity"
        case type = "Type"
        case mainAffixGroup = "MainAffixGroup"
        case subAffixGroup = "SubAffixGroup"
        case icon = "Icon"
        case setID = "SetID"
    }
}

// MARK: Item convenience initializers and mutators

extension Item {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Item.self, from: data)
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
        rarity: Int? = nil,
        type: TypeEnum? = nil,
        mainAffixGroup: Int? = nil,
        subAffixGroup: Int? = nil,
        icon: String? = nil,
        setID: Int? = nil
    ) -> Item {
        return Item(
            rarity: rarity ?? self.rarity,
            type: type ?? self.type,
            mainAffixGroup: mainAffixGroup ?? self.mainAffixGroup,
            subAffixGroup: subAffixGroup ?? self.subAffixGroup,
            icon: icon ?? self.icon,
            setID: setID ?? self.setID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum TypeEnum: String, Codable {
    case body = "BODY"
    case foot = "FOOT"
    case hand = "HAND"
    case head = "HEAD"
    case neck = "NECK"
    case object = "OBJECT"
}

// MARK: - Set
struct Set: Codable {
    let name: String
    let setSkills: [String: SetSkill]

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case setSkills = "SetSkills"
    }
}

// MARK: Set convenience initializers and mutators

extension Set {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Set.self, from: data)
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
        setSkills: [String: SetSkill]? = nil
    ) -> Set {
        return Set(
            name: name ?? self.name,
            setSkills: setSkills ?? self.setSkills
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SetSkill
struct SetSkill: Codable {
    let props: [String: Double]
}

// MARK: SetSkill convenience initializers and mutators

extension SetSkill {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SetSkill.self, from: data)
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
        props: [String: Double]? = nil
    ) -> SetSkill {
        return SetSkill(
            props: props ?? self.props
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
