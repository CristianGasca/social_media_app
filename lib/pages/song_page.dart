import 'package:flutter/material.dart';
import 'package:music_player_app/components/neu_box.dart';
import 'package:music_player_app/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {
        // get playlist
        final playlist = value.playlist;

        //get current song index
        final currentSong = playlist[value.currentSongIndex ?? 0];

        // return scaffold UI
        return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
   
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => Navigator.pop(context),
                   icon: Icon(Icons.arrow_back)),
          
                  //Title 
                  const Text("P L A Y L I S T "),
          
                  //MENu botton 
                  IconButton(onPressed: () {}
                  , icon: Icon(Icons.menu)),
                ],
              ),

              SizedBox(width: 25),
          
              //album artwork
              NeuBox(child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(currentSong.albumArtImagePath)
                    ),
                    Padding(
                     padding: EdgeInsets.all(15.0),
                     child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(currentSong.SongName,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          Text(currentSong.ArtistName)
                        ],
                      ),
                      Icon(Icons.favorite, color: Colors.red,)
                     ]
                      ),
                   ),
                ],
              ),
              ),

              const SizedBox(height:  25),
          
              //song duration progress
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      //start time
                      Text("0:00"),
                    
                      // sufle Icon
                      Icon(Icons.shuffle),
                    
                      //repeat Icon
                      Icon(Icons.repeat),
                    
                      //end time
                      Text("0:00")
                    
                    
                    ],),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: 
                          const RoundSliderThumbShape(enabledThumbRadius: 0),
                      ),
                      child: Slider(
                        min: 0,
                        max: 100,
                        value: 50,
                        activeColor: Colors.green,
                        onChanged: (value) {},
                                      ),
                    )
                  ],
                ),
                
              ),

              const SizedBox(height: 10,),
              
              //playback controls
             Row(children:[
                //skip previus
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: const NeuBox(
                      child: Icon(Icons.skip_previous)),
                  )),

                  SizedBox(width: 25),

                //play pause
                 Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: const NeuBox(
                      child: Icon(Icons.play_arrow)),
                  )),
                  SizedBox(width: 25),
                //skip forward
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: const NeuBox(
                      child: Icon(Icons.skip_next)),
                  )),
              ],)
            ],
          ),
        ),
      )

    );
      }
    );

    
  }
}