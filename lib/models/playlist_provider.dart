import 'package:flutter/cupertino.dart';
import 'package:music_player_app/models/song.dart';

class PlaylistProvider extends ChangeNotifier{
  
  final List<Song> _playList = [
    // song 1 
    Song(SongName: 'Ahora te puedes marchar', 
    ArtistName: 'Luis Miguel',
     albumArtImagePath: 'assets/images/Ahora_te_puedes_marchar.jpg',
      audioPath: 'song/ahora_te_puedes_marchar.mp3'),
    // cancion 2
    Song(SongName: 'Bad', 
    ArtistName: 'Michael Jackson',
     albumArtImagePath: 'assets/images/Bad.jpg',
      audioPath: 'song/bad.mp3'),
    // cancion 3
    Song(SongName: 'Ballad of a homeschooled girl', 
    ArtistName: 'Olivia Rodrigo',
     albumArtImagePath: 'assets/images/ballad_of_a_homeschooled_girl.jpg',
      audioPath: 'song/ballad of a homeschool girl.mp3'),
    //cancion 4
    Song(SongName: 'Beat it', 
    ArtistName: 'Michael Jackson',
     albumArtImagePath: 'assets/images/Beat_it.jpg',
      audioPath: 'song/Beat it.mp3'),
    //cancion 5
    Song(SongName: 'Enemy', 
    ArtistName: 'Imagine Dragons',
     albumArtImagePath: 'assets/images/Enemy.jpg',
      audioPath: 'song/Enemy.mp3'),
    //cancion 6
    Song(SongName: 'Eternal Sunshine', 
    ArtistName: 'Ariana Grande',
     albumArtImagePath: 'assets/images/eternal_sunshine.jpg',
      audioPath: 'song/eternal sunshine.mp3'),
    // cancion7
    Song(SongName: "What I've Done", 
    ArtistName: 'Linkin Park',
     albumArtImagePath: 'assets/images/link_in_park.jpg',
      audioPath: 'song/link in park.mp3'),
    // cancion 8
    Song(SongName: 'Me enamoré en la cola de tortillas', 
    ArtistName: 'Los Estrambóticos',
     albumArtImagePath: 'assets/images/me_enamore_en_la_cola_de_las_tortillas.jpg',
      audioPath: 'song/me enamore en la cola de las tortillas.mp3'),
    // cancion9
    Song(SongName: 'Mi cucú', 
    ArtistName: 'La Sonora Dinamita',
     albumArtImagePath: 'assets/images/Mi_cucu.jpg',
      audioPath: 'song/Mi cucu.mp3'),
    //cancion 10
    Song(SongName: 'Secreto de amor', 
    ArtistName: 'Joan Sebastian',
     albumArtImagePath: 'assets/images/secreto_de_amor.jpg',
      audioPath: 'song/Secreto de amor.mp3'),
    //cancion 11
    Song(SongName: 'Suave', 
    ArtistName: 'Luis Miguel',
     albumArtImagePath: 'assets/images/suave.jpg',
      audioPath: 'song/suave.mp3'),
    //cancion 12
    Song(SongName: 'Levitating', 
    ArtistName: ' Dua Lipa',
     albumArtImagePath: 'assets/images/Levitating.jpg',
      audioPath: 'song/Levitating.mp3'),
  ];

  //current song
  int? _currentSongIndex;

  /*
  G E T  T E R S
  */

  List<Song> get playlist => _playList;
  int? get currentSongIndex => _currentSongIndex;

  /* 
  S E T T E R S
  */

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    notifyListeners();
  }




}