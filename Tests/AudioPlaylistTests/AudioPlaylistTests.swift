import XCTest
@testable import AudioPlaylist

final class AudioPlaylistTests: XCTestCase {
    
    // Mock data
    let playlist = AudioPlaylistModel(title: "The Indian bliss", coverImageURL: "https://sampleImage.com", auidoURL: "https://sampleAduioUrl.com/audio.mp3")

    func testModelObjectNonNil() {
        XCTAssertNotNil(playlist)
    }
    
    func testTitle() {
        XCTAssertTrue(playlist.hasValidTitle())
    }
    
    func testValidThumbail() {
        XCTAssertTrue(playlist.hasValidThumbnailURL())
    }
    
    func testValidAudio() {
        XCTAssertTrue(playlist.hasValidAudioURL())
    }
    
    func testOptimisedTitle() {
        let maxCharactersOftitle = 200
        XCTAssertLessThan(playlist.title.count, maxCharactersOftitle)
    }
}
