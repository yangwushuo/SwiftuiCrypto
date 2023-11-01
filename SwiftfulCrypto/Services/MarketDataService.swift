//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/11/1.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    
    /// Description
    /// 请求市场货币数据
    private func getData() {
        guard let url = URL(string: ApiInfo.marketCap) else {return}
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink (receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                print("获取\(url)")
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
    
}
