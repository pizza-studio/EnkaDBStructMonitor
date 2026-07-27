// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weaponMetaJSON = try WeaponMetaJSON(json)

import Foundation

// MARK: - WeaponMetaJSON
struct WeaponMetaJSON: Codable {
    let breakSkillLevelBounds: [String: [String: [BreakSkillLevelBound]]]
    let levelCurves: [String: [Int]]
    let talentSkillLevelBounds: TalentSkillLevelBounds

    enum CodingKeys: String, CodingKey {
        case breakSkillLevelBounds = "BreakSkillLevelBounds"
        case levelCurves = "LevelCurves"
        case talentSkillLevelBounds = "TalentSkillLevelBounds"
    }
}

// MARK: WeaponMetaJSON convenience initializers and mutators

extension WeaponMetaJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WeaponMetaJSON.self, from: data)
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
        breakSkillLevelBounds: [String: [String: [BreakSkillLevelBound]]]? = nil,
        levelCurves: [String: [Int]]? = nil,
        talentSkillLevelBounds: TalentSkillLevelBounds? = nil
    ) -> WeaponMetaJSON {
        return WeaponMetaJSON(
            breakSkillLevelBounds: breakSkillLevelBounds ?? self.breakSkillLevelBounds,
            levelCurves: levelCurves ?? self.levelCurves,
            talentSkillLevelBounds: talentSkillLevelBounds ?? self.talentSkillLevelBounds
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - BreakSkillLevelBound
struct BreakSkillLevelBound: Codable {
    let lowerBound: Int
    let upperBound: Int

    enum CodingKeys: String, CodingKey {
        case lowerBound = "lowerBound"
        case upperBound = "upperBound"
    }
}

// MARK: BreakSkillLevelBound convenience initializers and mutators

extension BreakSkillLevelBound {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BreakSkillLevelBound.self, from: data)
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
        lowerBound: Int? = nil,
        upperBound: Int? = nil
    ) -> BreakSkillLevelBound {
        return BreakSkillLevelBound(
            lowerBound: lowerBound ?? self.lowerBound,
            upperBound: upperBound ?? self.upperBound
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - TalentSkillLevelBounds
struct TalentSkillLevelBounds: Codable {
    let wpnPotential3Star: [String: [BreakSkillLevelBound]]
    let wpnPotential456Star: [String: [BreakSkillLevelBound]]

    enum CodingKeys: String, CodingKey {
        case wpnPotential3Star = "wpn_potential_3star"
        case wpnPotential456Star = "wpn_potential_456star"
    }
}

// MARK: TalentSkillLevelBounds convenience initializers and mutators

extension TalentSkillLevelBounds {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TalentSkillLevelBounds.self, from: data)
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
        wpnPotential3Star: [String: [BreakSkillLevelBound]]? = nil,
        wpnPotential456Star: [String: [BreakSkillLevelBound]]? = nil
    ) -> TalentSkillLevelBounds {
        return TalentSkillLevelBounds(
            wpnPotential3Star: wpnPotential3Star ?? self.wpnPotential3Star,
            wpnPotential456Star: wpnPotential456Star ?? self.wpnPotential456Star
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
