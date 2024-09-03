import 'package:task/models/music.dart';

class MusicOperations{
  MusicOperations._(){}
  static List<Music> getmusic(){
    return <Music>[
      Music('Zaroorat Se Zyada', 'https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-08/09/12-22/ZMC08144.jpg', 'Vedaa'),
      Music('Khoobsurat', 'https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_saregama/20240809144314000/8907212018344/1723205705484/resources/8907212018344.jpg', 'Stree 2'),
      Music('Chal Ve Dilaa', 'https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_hungama/8903431011893_20240816165844/8903431011893/1723808711020/resources/8903431011893.jpg', 'Khel Khel Mein'),
      Music('Aayi Nai', 'https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_saregama/20240801205737000/8907212018256/1722528920624/resources/8907212018256.jpg', 'Stree 2'),
    ];
  }
}