//
//  PlaylistTableView.swift
//  MyPlaylist
//
//

import SwiftUI
import Kingfisher

struct PlaylistCellView: View {
    let playlist: AudioPlaylistModel

    var body: some View {
  //    NavigationLink(destination: PlaylistDetailView(playlist: playlist)) {
        HStack {
             KFImage(URL(string: playlist.coverImageURL)!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(5)
            .padding(.leading, 8)
          Text(playlist.title)
            .font(.headline)
            .lineLimit(1)
          Spacer()
        }
        .padding(.vertical, 8)
      }
  //  }
  }

struct PlaylistCellView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCellView(playlist: AudioPlaylistModel(title: "Rock on", coverImageURL: "", auidoURL: ""))
    }
}
