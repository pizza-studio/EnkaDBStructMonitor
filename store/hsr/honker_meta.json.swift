// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let honkerMetaJSON = try HonkerMetaJSON(json)

import Foundation

// MARK: - HonkerMetaJSON
struct HonkerMetaJSON: Codable {
    let avatar: [String: [String: Avatar]]
    let equipment: [String: [String: Equipment]]
    let equipmentSkill: [String: [String: EquipmentSkill]]
    let relic: Relic
    let tree: [String: Tree]
}

// MARK: HonkerMetaJSON convenience initializers and mutators

extension HonkerMetaJSON {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HonkerMetaJSON.self, from: data)
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
        avatar: [String: [String: Avatar]]? = nil,
        equipment: [String: [String: Equipment]]? = nil,
        equipmentSkill: [String: [String: EquipmentSkill]]? = nil,
        relic: Relic? = nil,
        tree: [String: Tree]? = nil
    ) -> HonkerMetaJSON {
        return HonkerMetaJSON(
            avatar: avatar ?? self.avatar,
            equipment: equipment ?? self.equipment,
            equipmentSkill: equipmentSkill ?? self.equipmentSkill,
            relic: relic ?? self.relic,
            tree: tree ?? self.tree
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Avatar
struct Avatar: Codable {
    let attackAdd, attackBase: Double
    let baseAggro: Int
    let criticalChance, criticalDamage, defenceAdd, defenceBase: Double
    let hpAdd, hpBase: Double
    let speedBase: Int

    enum CodingKeys: String, CodingKey {
        case attackAdd = "AttackAdd"
        case attackBase = "AttackBase"
        case baseAggro = "BaseAggro"
        case criticalChance = "CriticalChance"
        case criticalDamage = "CriticalDamage"
        case defenceAdd = "DefenceAdd"
        case defenceBase = "DefenceBase"
        case hpAdd = "HPAdd"
        case hpBase = "HPBase"
        case speedBase = "SpeedBase"
    }
}

// MARK: Avatar convenience initializers and mutators

extension Avatar {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Avatar.self, from: data)
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
        attackAdd: Double? = nil,
        attackBase: Double? = nil,
        baseAggro: Int? = nil,
        criticalChance: Double? = nil,
        criticalDamage: Double? = nil,
        defenceAdd: Double? = nil,
        defenceBase: Double? = nil,
        hpAdd: Double? = nil,
        hpBase: Double? = nil,
        speedBase: Int? = nil
    ) -> Avatar {
        return Avatar(
            attackAdd: attackAdd ?? self.attackAdd,
            attackBase: attackBase ?? self.attackBase,
            baseAggro: baseAggro ?? self.baseAggro,
            criticalChance: criticalChance ?? self.criticalChance,
            criticalDamage: criticalDamage ?? self.criticalDamage,
            defenceAdd: defenceAdd ?? self.defenceAdd,
            defenceBase: defenceBase ?? self.defenceBase,
            hpAdd: hpAdd ?? self.hpAdd,
            hpBase: hpBase ?? self.hpBase,
            speedBase: speedBase ?? self.speedBase
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Equipment
struct Equipment: Codable {
    let attackAdd, baseAttack, baseDefence, baseHP: Double
    let defenceAdd, hpAdd: Double

    enum CodingKeys: String, CodingKey {
        case attackAdd = "AttackAdd"
        case baseAttack = "BaseAttack"
        case baseDefence = "BaseDefence"
        case baseHP = "BaseHP"
        case defenceAdd = "DefenceAdd"
        case hpAdd = "HPAdd"
    }
}

// MARK: Equipment convenience initializers and mutators

extension Equipment {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Equipment.self, from: data)
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
        attackAdd: Double? = nil,
        baseAttack: Double? = nil,
        baseDefence: Double? = nil,
        baseHP: Double? = nil,
        defenceAdd: Double? = nil,
        hpAdd: Double? = nil
    ) -> Equipment {
        return Equipment(
            attackAdd: attackAdd ?? self.attackAdd,
            baseAttack: baseAttack ?? self.baseAttack,
            baseDefence: baseDefence ?? self.baseDefence,
            baseHP: baseHP ?? self.baseHP,
            defenceAdd: defenceAdd ?? self.defenceAdd,
            hpAdd: hpAdd ?? self.hpAdd
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - EquipmentSkill
struct EquipmentSkill: Codable {
    let props: [String: Double]
}

// MARK: EquipmentSkill convenience initializers and mutators

extension EquipmentSkill {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EquipmentSkill.self, from: data)
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
    ) -> EquipmentSkill {
        return EquipmentSkill(
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

// MARK: - Relic
struct Relic: Codable {
    let mainAffix: [String: [String: MainAffix]]
    let setSkill: [String: [String: EquipmentSkill]]
    let subAffix: [String: [String: SubAffix]]
}

// MARK: Relic convenience initializers and mutators

extension Relic {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Relic.self, from: data)
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
        mainAffix: [String: [String: MainAffix]]? = nil,
        setSkill: [String: [String: EquipmentSkill]]? = nil,
        subAffix: [String: [String: SubAffix]]? = nil
    ) -> Relic {
        return Relic(
            mainAffix: mainAffix ?? self.mainAffix,
            setSkill: setSkill ?? self.setSkill,
            subAffix: subAffix ?? self.subAffix
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - MainAffix
struct MainAffix: Codable {
    let baseValue, levelAdd: Double
    let property: String

    enum CodingKeys: String, CodingKey {
        case baseValue = "BaseValue"
        case levelAdd = "LevelAdd"
        case property = "Property"
    }
}

// MARK: MainAffix convenience initializers and mutators

extension MainAffix {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(MainAffix.self, from: data)
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
        baseValue: Double? = nil,
        levelAdd: Double? = nil,
        property: String? = nil
    ) -> MainAffix {
        return MainAffix(
            baseValue: baseValue ?? self.baseValue,
            levelAdd: levelAdd ?? self.levelAdd,
            property: property ?? self.property
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SubAffix
struct SubAffix: Codable {
    let baseValue: Double
    let property: String
    let stepValue: Double

    enum CodingKeys: String, CodingKey {
        case baseValue = "BaseValue"
        case property = "Property"
        case stepValue = "StepValue"
    }
}

// MARK: SubAffix convenience initializers and mutators

extension SubAffix {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SubAffix.self, from: data)
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
        baseValue: Double? = nil,
        property: String? = nil,
        stepValue: Double? = nil
    ) -> SubAffix {
        return SubAffix(
            baseValue: baseValue ?? self.baseValue,
            property: property ?? self.property,
            stepValue: stepValue ?? self.stepValue
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Tree
struct Tree: Codable {
    let the1: EquipmentSkill

    enum CodingKeys: String, CodingKey {
        case the1 = "1"
    }
}

// MARK: Tree convenience initializers and mutators

extension Tree {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Tree.self, from: data)
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
        the1: EquipmentSkill? = nil
    ) -> Tree {
        return Tree(
            the1: the1 ?? self.the1
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
