//
//  AudioPlaylistModel.swift
//  MyPlaylist
//
//

import SwiftUI

/// Assing title and URL of cover image
public struct AudioPlaylistModel: Identifiable {
    public let id = UUID()
    public let title: String
    public let coverImageURL: String
    public let auidoURL: String
    
    /// Ensure the url is valid to load thumbnail
    func hasValidThumbnailURL() -> Bool {
        return !coverImageURL.isEmpty && coverImageURL.hasPrefix("https://")
    }
    
    /// Ensure the title is non empty
    func hasValidTitle() -> Bool {
        return !title.isEmpty
    }
    
    /// Ensure the url is valid to play Audio
    func hasValidAudioURL() -> Bool {
        return !auidoURL.isEmpty && auidoURL.hasPrefix("https://")
    }
}
