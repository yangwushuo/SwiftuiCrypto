//
//  CoinModel.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/22.
//

import Foundation

// 接口：https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
/*
 结构：
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
 "current_price": 29844,
 "market_cap": 580336756995,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 624317134271,
 "total_volume": 12773056911,
 "high_24h": 30253,
 "low_24h": 29665,
 "price_change_24h": 178.43,
 "price_change_percentage_24h": 0.60148,
 "market_cap_change_24h": 2680226013,
 "market_cap_change_percentage_24h": 0.46398,
 "circulating_supply": 19520643,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 69045,
 "ath_change_percentage": -56.75189,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 67.81,
 "atl_change_percentage": 43936.27426,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2023-10-22T09:03:29.416Z",
 "sparkline_in_7d": {
 "price": [
 26892.620438460435,
 26876.507249640086,
 26891.488924878282,
 26881.098705508528,
 26880.98681977488,
 26877.87771868917,
 26876.675736492372,
 26905.878377811427,
 26898.723489670752,
 26901.449840082005,
 26851.006567221477,
 26842.40654416286,
 26846.58253133974,
 26886.155337924767,
 26899.475848237824,
 26923.75379735683,
 26965.59192529843,
 27056.009940986372,
 27009.167023253063,
 27196.298592542582,
 27180.160170151594,
 27128.978144491553,
 27150.29700140705,
 27160.777405985646,
 27244.393820215242,
 27186.544992626878,
 27236.015765106335,
 27258.016452753076,
 27917.095103383443,
 27799.579745713032,
 27867.280989651696,
 27829.804423321286,
 27763.785884842495,
 27789.59185533589,
 27749.459401966204,
 27855.267855609698,
 28169.32561144615,
 28194.511098520587,
 28061.68165797989,
 28080.880495599165,
 28247.906159495586,
 28535.955587851917,
 28478.766995641403,
 28433.01073772692,
 28418.587345885,
 28515.420222673423,
 28525.033408335068,
 28308.769868016458,
 28377.17802880866,
 28376.762822970613,
 28270.74831197017,
 28214.536328894857,
 28213.526853976764,
 28158.686776258488,
 28442.9634069701,
 28497.26353854998,
 28458.917539435628,
 28539.363938056355,
 28430.00440765494,
 28368.662412162194,
 28255.226766572632,
 28456.457979314957,
 28500.549212335274,
 28576.711914963784,
 28439.975904302206,
 28419.25335950957,
 28504.608796688077,
 28491.662926207293,
 28497.798657481482,
 28400.423999371484,
 28417.72175169982,
 28378.219275330557,
 28368.366723086296,
 28471.074639252165,
 28524.021261926522,
 28767.30051705669,
 28671.335987788614,
 28698.29225940087,
 28506.830310622943,
 28565.646764888774,
 28467.97572412903,
 28388.63124550834,
 28363.65616896016,
 28326.85633766558,
 28308.75047802354,
 28206.323566697505,
 28276.712172633892,
 28342.67132821647,
 28356.966143888243,
 28302.02950121759,
 28274.213858241063,
 28211.482432915396,
 28278.043091918582,
 28348.72475198672,
 28328.245198134824,
 28397.72955251264,
 28241.519358278245,
 28203.668818077025,
 28241.747030009214,
 28286.730339091984,
 28315.877724071437,
 28306.920160291447,
 28344.699142057645,
 28354.387176638695,
 28400.415428063883,
 28484.945356067685,
 28449.642345777727,
 28532.416526657595,
 28488.765391263038,
 28694.081114132485,
 28693.520322074877,
 28698.61177131087,
 28539.84494404738,
 28688.005875578427,
 28766.374033953238,
 28819.438174975017,
 28652.787940888513,
 28667.75098162602,
 28715.748142407952,
 28652.641226876258,
 28661.81786020089,
 29029.829170375495,
 29201.06360092084,
 29298.722303312636,
 29227.312109475857,
 29254.882908843538,
 29262.427943842667,
 29752.96754051036,
 29797.29200933459,
 29902.333349112665,
 29846.693315143064,
 29524.671534373574,
 29675.739778653362,
 29599.545672505225,
 29550.726347621956,
 29521.167366037476,
 29520.69019940351,
 29507.404782473935,
 29528.34942787339,
 29619.911675424868,
 29636.90814760775,
 29656.162130353616,
 29677.392888476206,
 29643.68336589649,
 29565.620731948613,
 29493.129341677413,
 29630.585273928962,
 29567.161240576126,
 29568.825314520178,
 29713.77246035447,
 29709.642108949498,
 29673.52834326437,
 29789.108149473203,
 29803.05960256781,
 29817.538459789437,
 29799.143237645578,
 29782.22791375014,
 29896.05924376951,
 29932.190753535004,
 29867.66718338454,
 30079.10137868095,
 30191.974890550126,
 30184.991359678443,
 30000.582567484347,
 30029.52607960803,
 30018.49610114377,
 29920.07449265145,
 30000.682976101143
 ]
 },
 "price_change_percentage_24h_in_currency": 0.6014849006813933
 }
 */

/// 货币结构体
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id,symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    
    /// Description
    /// 更新当前币种持有数值
    /// - Parameter amount: 更新数值
    /// - Returns: 返回最新实例
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    
    /// 当前持有总值
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    /// 
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
    let price: [Double]?
}
