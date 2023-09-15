//
//  b3Model.swift
//  myAssets
//
//  Created by Bruno Ornelas on 06/09/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let b3Model = try? JSONDecoder().decode(B3Model.self, from: jsonData)

import Foundation

// MARK: - B3Model
struct B3Model: Decodable {
    let BizSts: BizSts
    let Msg: Msg
    let Trad: [Trad]
}

// MARK: - BizSts
struct BizSts: Decodable {
    let cd: String
}

// MARK: - Msg
struct Msg: Decodable {
    let dtTm: String
}

// MARK: - Trad
struct Trad: Decodable {
    let scty: Scty
    let ttlQty: Int
}

// MARK: - Scty
struct Scty: Decodable {
    let SctyQtn: SctyQtn
    let mkt: Mkt
    let symb, desc: String
    let indxCmpnInd: Bool
}

// MARK: - Mkt
struct Mkt: Decodable {
    let nm: String
}

// MARK: - SctyQtn
struct SctyQtn: Decodable {
    let opngPric, minPric, maxPric, avrgPric: Double
    let curPrc, prcFlcn: Double
}
