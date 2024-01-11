//
//  AudioPlaylist.swift
//  AudioPlaylist
//
//

import SwiftUI

/// This view is added with Tableview which dipslay thumbnail and title
public struct AudioPlaylist: View {
    
    /// Pass the audioplaylist model
    @State public var playlists: [AudioPlaylistModel] = []
    
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

struct PlaylistTableView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlaylist()
    }
}
