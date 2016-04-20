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

/***************************************************************
　継承
***************************************************************/

// 必須で実装させたいメソッドを定義
protocol TargetOverride {
    func requiredMethod()
}


class AdapteeOverride {
    func oldMethod() {
        print(#function)
    }
}

class AdapterOverride: AdapteeOverride, TargetOverride {
    func requiredMethod() {
        super.oldMethod()
    }
}


/***************************************************************
 　委譲
 ***************************************************************/
class TargetTransfer {
    func requiredMethod() {
        fatalError("must be overridden")
    }
}

class AdapteeTransfer {
    func oldMethod() {
        print(#function)
    }
}

class AdapterTransfer: TargetTransfer {
    private let adaptee = AdapteeTransfer()
    
     override func requiredMethod() {
        adaptee.oldMethod()
    }
}