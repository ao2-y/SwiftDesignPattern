//
//  Adapter.swift
//  SwiftDesignPattern
//
//　Adapter パターンは、既存クラスを修正することなく、異なるインタフェースを持たせるためのパターンです。
//
//　参考URL:
// 　http://qiita.com/susieyy/items/acb3bc80a1dafe64cffd
//
//


import UIKit

// 必須で実装させたいメソッドを定義
protocol Target {
    func requiredMethod()
    
}

class Adaptee {
    func oldMethod() {
        print(#function)
    }
}

class Adapter: Adaptee, Target {
    func requiredMethod() {
        super.oldMethod()
    }
}

