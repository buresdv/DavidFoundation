//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

public extension Array
{
    func penultimate() -> Element?
    {
        if count < 2
        {
            return nil
        }
        let index = count - 2
        return self[index]
    }
}

