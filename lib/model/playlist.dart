
class Playlist {
  final int? id;
  final String? playlistName;
  final String? image;

  Playlist({this.id, this.playlistName, this.image});
}

List<Playlist> playlists = [
  Playlist(
    id: 1,
    playlistName: 'Party',
    image: "assets/image/party.png",
  ),
  Playlist(
    id: 2,
    playlistName: 'Peace',
    image: "assets/image/meditation.png",
  ),
  Playlist(
    id: 3,
    playlistName: 'Flutter Time',
    image: "assets/image/colors.png",
  ),
  Playlist(
    id: 4,
    playlistName: 'Romance',
    image: "assets/image/love.png",
  ),
];
