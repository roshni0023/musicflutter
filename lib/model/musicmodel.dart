class Song {
  final int? id;
  final String? SongName;
  final String? artist;
  final String? image;


  Song({this.id, this.SongName, this.artist, this.image});
}

List<Song> songs = [
  Song(
      id: 1,
      SongName: "Hero",
      image: "assets/image/meditation.png",
      artist: 'Taylor Swift'
  ),
  Song(
      id: 2,
      SongName: "unholy",
      image: "assets/image/party.png",
      artist: "Sam Smith,Kim peters"
  ),
  Song(
      id: 3,
      SongName: "Lift me up",
      image: "assets/image/colors.png",
      artist: "Rihanna"
  ),
  Song(
      id: 4,
      SongName: "Depression",
      image: "assets/image/love.png",
      artist: "Dax"
  ),
  Song(
      id: 5,
      SongName: "I'm Good",
      image: "assets/image/colors.png",
      artist: 'David Guetta & Bebe Rexha'
  ),
];