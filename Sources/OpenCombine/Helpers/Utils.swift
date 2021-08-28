//
//  Utils.swift
//
//
//  Created by Sergej Jaskiewicz on 28.08.2021.
//

extension RangeReplaceableCollection {

    /// Replaces `self` with an empty collection, returning the previous value.
    internal mutating func take() -> Self {
        let taken = self
        self.removeAll(keepingCapacity: false)
        return taken
    }
}

extension Dictionary {
    internal mutating func take() -> Dictionary {
        let taken = self
        self.removeAll()
        return taken
    }
}

extension Optional {
    internal mutating func take() -> Optional {
        let taken = self
        self = nil
        return taken
    }
}
