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
    let hpBase, hpAdd, attackBase, attackAdd: Double
    let defenceBase, defenceAdd: Double
    let speedBase: Int
    let criticalChance, criticalDamage: Double
    let baseAggro: Int

    enum CodingKeys: String, CodingKey {
        case hpBase = "HPBase"
        case hpAdd = "HPAdd"
        case attackBase = "AttackBase"
        case attackAdd = "AttackAdd"
        case defenceBase = "DefenceBase"
        case defenceAdd = "DefenceAdd"
        case speedBase = "SpeedBase"
        case criticalChance = "CriticalChance"
        case criticalDamage = "CriticalDamage"
        case baseAggro = "BaseAggro"
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
        hpBase: Double? = nil,
        hpAdd: Double? = nil,
        attackBase: Double? = nil,
        attackAdd: Double? = nil,
        defenceBase: Double? = nil,
        defenceAdd: Double? = nil,
        speedBase: Int? = nil,
        criticalChance: Double? = nil,
        criticalDamage: Double? = nil,
        baseAggro: Int? = nil
    ) -> Avatar {
        return Avatar(
            hpBase: hpBase ?? self.hpBase,
            hpAdd: hpAdd ?? self.hpAdd,
            attackBase: attackBase ?? self.attackBase,
            attackAdd: attackAdd ?? self.attackAdd,
            defenceBase: defenceBase ?? self.defenceBase,
            defenceAdd: defenceAdd ?? self.defenceAdd,
            speedBase: speedBase ?? self.speedBase,
            criticalChance: criticalChance ?? self.criticalChance,
            criticalDamage: criticalDamage ?? self.criticalDamage,
            baseAggro: baseAggro ?? self.baseAggro
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
    let baseHP, hpAdd, baseAttack, attackAdd: Double
    let baseDefence, defenceAdd: Double

    enum CodingKeys: String, CodingKey {
        case baseHP = "BaseHP"
        case hpAdd = "HPAdd"
        case baseAttack = "BaseAttack"
        case attackAdd = "AttackAdd"
        case baseDefence = "BaseDefence"
        case defenceAdd = "DefenceAdd"
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
        baseHP: Double? = nil,
        hpAdd: Double? = nil,
        baseAttack: Double? = nil,
        attackAdd: Double? = nil,
        baseDefence: Double? = nil,
        defenceAdd: Double? = nil
    ) -> Equipment {
        return Equipment(
            baseHP: baseHP ?? self.baseHP,
            hpAdd: hpAdd ?? self.hpAdd,
            baseAttack: baseAttack ?? self.baseAttack,
            attackAdd: attackAdd ?? self.attackAdd,
            baseDefence: baseDefence ?? self.baseDefence,
            defenceAdd: defenceAdd ?? self.defenceAdd
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
    let subAffix: [String: [String: SubAffix]]
    let setSkill: [String: [String: EquipmentSkill]]
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
        subAffix: [String: [String: SubAffix]]? = nil,
        setSkill: [String: [String: EquipmentSkill]]? = nil
    ) -> Relic {
        return Relic(
            mainAffix: mainAffix ?? self.mainAffix,
            subAffix: subAffix ?? self.subAffix,
            setSkill: setSkill ?? self.setSkill
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
    let property: String
    let baseValue, levelAdd: Double

    enum CodingKeys: String, CodingKey {
        case property = "Property"
        case baseValue = "BaseValue"
        case levelAdd = "LevelAdd"
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
        property: String? = nil,
        baseValue: Double? = nil,
        levelAdd: Double? = nil
    ) -> MainAffix {
        return MainAffix(
            property: property ?? self.property,
            baseValue: baseValue ?? self.baseValue,
            levelAdd: levelAdd ?? self.levelAdd
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
    let property: String
    let baseValue, stepValue: Double

    enum CodingKeys: String, CodingKey {
        case property = "Property"
        case baseValue = "BaseValue"
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
        property: String? = nil,
        baseValue: Double? = nil,
        stepValue: Double? = nil
    ) -> SubAffix {
        return SubAffix(
            property: property ?? self.property,
            baseValue: baseValue ?? self.baseValue,
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
