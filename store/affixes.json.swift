// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let affixesJSON = try AffixesJSON(json)

import Foundation

// MARK: - AffixesJSONValue
struct AffixesJSONValue: Codable {
    let propType: PropType
    let efficiency: Double
    let position: Int
}

// MARK: AffixesJSONValue convenience initializers and mutators

extension AffixesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AffixesJSONValue.self, from: data)
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
        propType: PropType? = nil,
        efficiency: Double? = nil,
        position: Int? = nil
    ) -> AffixesJSONValue {
        return AffixesJSONValue(
            propType: propType ?? self.propType,
            efficiency: efficiency ?? self.efficiency,
            position: position ?? self.position
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum PropType: String, Codable {
    case fightPropAttack = "FIGHT_PROP_ATTACK"
    case fightPropAttackPercent = "FIGHT_PROP_ATTACK_PERCENT"
    case fightPropChargeEfficiency = "FIGHT_PROP_CHARGE_EFFICIENCY"
    case fightPropCritical = "FIGHT_PROP_CRITICAL"
    case fightPropCriticalHurt = "FIGHT_PROP_CRITICAL_HURT"
    case fightPropDefense = "FIGHT_PROP_DEFENSE"
    case fightPropDefensePercent = "FIGHT_PROP_DEFENSE_PERCENT"
    case fightPropElementMastery = "FIGHT_PROP_ELEMENT_MASTERY"
    case fightPropHP = "FIGHT_PROP_HP"
    case fightPropHPPercent = "FIGHT_PROP_HP_PERCENT"
}

typealias AffixesJSON = [String: AffixesJSONValue]

extension Dictionary where Key == String, Value == AffixesJSONValue {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AffixesJSON.self, from: data)
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
