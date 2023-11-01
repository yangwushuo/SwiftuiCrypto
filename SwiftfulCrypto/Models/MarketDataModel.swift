//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by staircaseprogram on 2023/10/31.
//

import Foundation

//接口: https://api.coingecko.com/api/v3/global
/*
结构: 
 {
 "data": {
 "active_cryptocurrencies": 10656,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 913,
 "total_market_cap": {
 "btc": 38425238.40807215,
 "eth": 731177888.7546574,
 "ltc": 19079807366.494846,
 "bch": 5373846232.638958,
 "bnb": 5799295887.50784,
 "eos": 2102900664317.8857,
 "xrp": 2302816696521.653,
 "xlm": 11158525979689,
 "link": 112003279268.47017,
 "dot": 292473232984.13574,
 "yfi": 226135166.0133866,
 "usd": 1317982071187.9622,
 "aed": 4840948147473.405,
 "ars": 461254317251858.56,
 "aud": 2076363452752.301,
 "bdt": 144979364264496.34,
 "bhd": 496992587295.9849,
 "bmd": 1317982071187.9622,
 "brl": 6651723715078.52,
 "cad": 1824501032894.4956,
 "chf": 1188792150588.0474,
 "clp": 1209157863922584.5,
 "cny": 9644465604125.025,
 "czk": 30527057239447.25,
 "dkk": 9284261104069.354,
 "eur": 1243790224436.6523,
 "gbp": 1085169764187.1079,
 "hkd": 10311944444257.486,
 "huf": 476265936663360.94,
 "idr": 20954938027761664,
 "ils": 5291335570750.105,
 "inr": 109718703245345.45,
 "jpy": 197978040859357.6,
 "krw": 1781562452821836.8,
 "kwd": 407375078383.4879,
 "lkr": 430664874649054.75,
 "mmk": 2761453761093897,
 "mxn": 23850713619278.934,
 "myr": 6279525578175.034,
 "ngn": 1039479279725234.4,
 "nok": 14722940480467.94,
 "nzd": 2261232843931.6226,
 "php": 74885325423763.48,
 "pkr": 364570473824329.1,
 "pln": 5532539469598.208,
 "rub": 122335105073541.25,
 "sar": 4944376790509.855,
 "sek": 14724253190610.828,
 "sgd": 1802024166652.455,
 "thb": 47552793128461.695,
 "try": 37277148546408.9,
 "twd": 42728318438896.234,
 "uah": 47864194070403.54,
 "vef": 131969544788.05067,
 "vnd": 32376229578732332,
 "zar": 24916540678589.285,
 "xdr": 1003589309944.7167,
 "xag": 57013545211.68392,
 "xau": 661165706.0114436,
 "bits": 38425238408072.15,
 "sats": 3842523840807215
 },
 "total_volume": {
 "btc": 1805376.8492575109,
 "eth": 34353765.59093342,
 "ltc": 896448374.4237862,
 "bch": 252485553.29296187,
 "bnb": 272474940.1971566,
 "eos": 98802982959.50713,
 "xrp": 108195866160.46806,
 "xlm": 524273766674.5872,
 "link": 5262377952.864986,
 "dot": 13741603845.095015,
 "yfi": 10624766.701195206,
 "usd": 61924256494.90178,
 "aed": 227447794105.77524,
 "ars": 21671638237946.44,
 "aud": 97556154848.88983,
 "bdt": 6811731005635.298,
 "bhd": 23350770184.636585,
 "bmd": 61924256494.90178,
 "brl": 312525530104.1195,
 "cad": 85722615205.48361,
 "chf": 55854378949.01504,
 "clp": 56811244511755.81,
 "cny": 453136939327.093,
 "czk": 1434287585434.452,
 "dkk": 436213040027.03625,
 "eur": 58438416248.29091,
 "gbp": 50985770054.872894,
 "hkd": 484497859786.3725,
 "huf": 22376946292709.16,
 "idr": 984549779266934,
 "ils": 248608860656.4952,
 "inr": 5155039109089.545,
 "jpy": 9301828340868.693,
 "krw": 83705182871560,
 "kwd": 19140168440.009224,
 "lkr": 20234419529755.113,
 "mmk": 129744535027443.98,
 "mxn": 1120605310219.0073,
 "myr": 295038120069.95905,
 "ngn": 48839041854964.12,
 "nok": 691744722938.3801,
 "nzd": 106242084534.66022,
 "php": 3518422746878.162,
 "pkr": 17129030830606.818,
 "pln": 259941618837.62692,
 "rub": 5747809921326.584,
 "sar": 232307300134.21146,
 "sek": 691806399497.8483,
 "sgd": 84666558935.21951,
 "thb": 2234227174336.0576,
 "try": 1751434832422.0688,
 "twd": 2007553371512.2197,
 "uah": 2248858080342.3735,
 "vef": 6200475802.8345175,
 "vnd": 1521169360797264.2,
 "zar": 1170682279885.5608,
 "xdr": 47152782426.351524,
 "xag": 2678732491.55033,
 "xau": 31064303.270667594,
 "bits": 1805376849257.5107,
 "sats": 180537684925751.1
 },
 "market_cap_percentage": {
 "btc": 50.823317717912886,
 "eth": 16.446768855895996,
 "usdt": 6.4224022941520476,
 "bnb": 2.6523534421794155,
 "xrp": 2.327433408004719,
 "usdc": 1.8902923560797147,
 "steth": 1.2028668812345864,
 "sol": 1.1516146648187429,
 "ada": 0.7983241475939798,
 "doge": 0.7445245275618586
 },
 "market_cap_change_percentage_24h_usd": 0.7272212853446508,
 "updated_at": 1698732484
 }
 }
 // 20231031141715
 // https://api.coingecko.com/api/v3/global

 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    // 获取市值
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    // 成交量
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    // 比特币占比
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}


