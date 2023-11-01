//
//  Double.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/22.
//

import Foundation


extension Double {
    
    /// Description
    /// 转换double到2精度
    /// ```
    /// Convert 1234.56 to $1,234.56

    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true // 使用分隔符
        formatter.numberStyle = .currency // 数字样式为货币
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2 // 最小精度2
        formatter.maximumFractionDigits = 2 // 最大精度2
        return formatter
    }
    
    /// Description
    /// 转换货币精度
    /// - Returns: 字符串格式
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Description
    /// 转换double到2-6精度
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 12.3456 to $12.3456
    /// Convert 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true // 使用分隔符
        formatter.numberStyle = .currency // 数字样式为货币
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2 // 最小精度2
        formatter.maximumFractionDigits = 6 // 最大精度6
        return formatter
    }
    
    
    /// Description
    /// 转换货币精度
    /// - Returns: 字符串格式
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    
    /// Description
    /// 转换
    /// ```
    /// Convert 1.2345 to "1.23"
    /// ```
    /// - Returns: <#description#>
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    
    /// Description
    /// 转换
    /// ```
    /// Convert 1.2345 to "1.23%"
    /// ```
    /// - Returns: <#description#>
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""
        
        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 0...:
            return self.asNumberString()
        default:
            return "\(sign)\(self)"
        }
    }
    
}
