//
//  URL - Reveal in Finder.swift
//  Cork
//
//  Created by David Bureš on 23.05.2024.
//

import Foundation

#if os(macOS)
import AppKit

public enum FolderOpeningType
{
    case openTargetItself, openParentDirectoryAndHighlightTarget
}

public extension URL
{
    func revealInFinder(_ folderOpeningType: FolderOpeningType)
    {
        switch folderOpeningType
        {
            case .openTargetItself:
                guard let resourceValues = try? resourceValues(forKeys: [.isDirectoryKey])
                else
                {
                    NSWorkspace.shared.selectFile(self.path, inFileViewerRootedAtPath: self.deletingLastPathComponent().path)
                    return
                }
                
                guard let isDirectory = resourceValues.isDirectory
                else
                {
                    NSWorkspace.shared.selectFile(self.path, inFileViewerRootedAtPath: self.deletingLastPathComponent().path)
                    return
                }
                
                if isDirectory
                {
                    NSWorkspace.shared.selectFile(nil, inFileViewerRootedAtPath: self.path)
                }
                else
                {
                    NSWorkspace.shared.selectFile(self.path, inFileViewerRootedAtPath: self.deletingLastPathComponent().path)
                }
                
            case .openParentDirectoryAndHighlightTarget:
                NSWorkspace.shared.selectFile(self.path, inFileViewerRootedAtPath: self.deletingLastPathComponent().path)
        }
    }
}
#endif
