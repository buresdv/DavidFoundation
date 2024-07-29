//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

public enum CPUArchitecture
{
    case arm, intel
}

public extension ProcessInfo
{
    var CPUArchitecture: CPUArchitecture?
    {
        var sysinfo = utsname()
        let result = uname(&sysinfo)
        guard result == EXIT_SUCCESS else
        {
            return nil
        }
        
        let data = Data(bytes: &sysinfo.machine, count: Int(_SYS_NAMELEN))
        
        guard let identifier = String(bytes: data, encoding: .ascii) else
        {
            return nil
        }
        
        let architectureString: String = identifier.trimmingCharacters(in: .controlCharacters)
        
        if architectureString.starts(with: "arm")
        {
            return .arm
        }
        else
        {
            return .intel
        }
    }
}
