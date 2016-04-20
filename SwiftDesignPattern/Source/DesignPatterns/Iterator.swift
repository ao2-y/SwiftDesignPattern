//
//  Iterator.swift
//  SwiftDesignPattern
//
//　Iteratorパターンは、要素の集まりを保有するオブジェクトの各要素に順番にアクセスする方法を提供するためのパターンです。
//
//　参考URL:
// 　http://qiita.com/susieyy/items/acb3bc80a1dafe64cffd
//
//

import UIKit

class Aggregate {
    func iterator() -> Iterator {
        fatalError("must be overridden")
    }
}

class Iterator {
    func next() -> AnyObject {
        fatalError("must be overridden")
    }
    func hasNext() -> Bool {
        fatalError("must be overridden")
    }
}

class ConcreteAggregate: Aggregate {
    private var items = [Item]()            // 配列の初期化
    
    override func iterator() -> Iterator {
        return ConcreteIterator(aggregate: self)
    }
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    func countOfItems() -> Int {
        return items.count
    }
    
    func itemAtIndex(index: Int) -> Item {
        return items[index]
    }
}

class ConcreteIterator: Iterator {
    private var aggregate: ConcreteAggregate
    private var index = 0
    
    init(aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
    }
    
    override func next() -> AnyObject {
        let result = aggregate.itemAtIndex(index);
        index += 1;
        return result;
    }
    
    override func hasNext() -> Bool {
        return aggregate.countOfItems() > index
    }
}


class Item {
    private var _name: String
    
    var name: String {
        get { return _name; }
//        set(value) {_name = value;}   // setter
    }
    
    init(name: String) {
        _name = name
    }
}