//
//  AudioPlaylist.swift
//  AudioPlaylist
//
//

import SwiftUI

/// This view is added with Tableview which dipslay thumbnail and title
public struct AudioPlaylist: View {
    
    /// Bind the audioplaylist model and use @state on intergration
    @Binding public var playlists: [AudioPlaylistModel]
    
    /// Pass @state / @published object using $variable
    public init(playlists: Binding<[AudioPlaylistModel]>) {
        self._playlists = playlists
    }
    
    public var body: some View {
      List {
        ForEach(playlists) { playlist in
            PlaylistCellView(playlist: playlist)
        }
        .onDelete { indexSet in
          playlists.remove(atOffsets: indexSet)
        }
        .onMove { indices, newOffset in
          playlists.move(fromOffsets: indices, toOffset: newOffset)
        }
      }
      .navigationTitle("My Playlists")
      .navigationBarItems(trailing: EditButton())
    }
  }
