//
//  SingleTon.swift
//  SwiftDesignPattern
//
//　参考URL:
// 　http://qiita.com/susieyy/items/acb3bc80a1dafe64cffd
//
//

import UIKit

/**
 * structのstatic定数で定義 （推奨）
 * static定数に初期化したインスタンスを保持する実装です。ただSwiftのclassはstatic定数を利用できないので、
 * structでネストしてstatic定数を保持しています。現状この実装方法が一番良いと言われています。
 */

class SingletonA {
    
    private var initCallCnt:Int = 0;
    
    class var sharedInstance : SingletonA {
        struct Static {
            static let instance : SingletonA = SingletonA()
        }
        return Static.instance
    }
    
    private init() {
        print("init call!");
        self.initCallCnt += 1;
    }
    
    func getInitCallCount() -> Int {
        return self.initCallCnt;
    }

}

/**
 * dispatch_onceで実装
 * ObjCと同様の実装方法
 */
class SingletonB {
    
    private var initCallCnt:Int = 0;

    class var sharedInstance: SingletonB {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : SingletonB? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = SingletonB()
        }
        return Static.instance!
    }
    
    private init() {
        print("init call!");
        self.initCallCnt += 1;
    }
    
    func getInitCallCount() -> Int {
        return self.initCallCnt;
    }
}