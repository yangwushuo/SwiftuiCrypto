//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        /*
         sendAction(_:to:from:for:) 是一个方法，通常用于将一个指定的 Action（操作）消息发送给一个目标对象，来执行某些操作或触发某些事件。这是一个来自 Objective-C 和 UIKit 的方法，在 SwiftUI 中一般不需要直接使用。

         在上下文中，sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil) 用于向第一响应者（通常是文本字段或文本视图）发送一个 resignFirstResponder 操作，这将导致当前的第一响应者放弃响应者状态，通常是取消键盘输入。这在处理键盘的隐藏操作时常常被用到。
         */
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
