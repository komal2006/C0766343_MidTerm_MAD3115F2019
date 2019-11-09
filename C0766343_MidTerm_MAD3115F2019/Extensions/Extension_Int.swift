//
//  Extension_Int.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Int
{
    public func insertUnit() -> String
    {
        return String.init(format: "%d Units", self)
    }
    public func insertGB() -> String
    {
        return String.init(format: "%d GB", self)
    }
    public func insertMinutes() -> String
    {
        return String.init(format: "%d Minutes", self)
    }
}
