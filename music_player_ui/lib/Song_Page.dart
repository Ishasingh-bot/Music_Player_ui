// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player_ui/new_box.dart';
import 'package:percent_indicator/percent_indicator.dart';


class SongPage extends StatefulWidget {
  SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 0,
        
       elevation: 0,
        backgroundColor: Colors.grey[300],
        systemOverlayStyle:
             SystemUiOverlayStyle(statusBarColor: Colors.transparent, ),
       ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              //SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(child: Icon(Icons.arrow_back_ios))),
                  Text('P L A Y L I S T'),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(child: Icon(Icons.menu))),
                ],
              ),
              SizedBox(height: 25),
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/cover_art.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hope My Friend',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text('Universe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
            
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:11')
                ],
              ),
              SizedBox(height: 25),
              //line wali chiz
              
              NewBox(child:LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.7,
                progressColor: Colors.blue,
                backgroundColor: Colors.transparent,
              )
              
               ),
             SizedBox(height:25),

             SizedBox(
              height:80,
               child: Row(
                  children: [
                    Expanded(child:NewBox(child: Icon(Icons.skip_previous,size:32)
                    )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: NewBox(child: Icon(Icons.play_arrow,size:32)),
                      )),
                    Expanded(child:NewBox
                    (child: Icon(Icons.skip_next,size:32))),



                  
                  ],

               ),
             )
              
            ],
          ),
        ),
      ),
    );
  }
}
