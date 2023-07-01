

class Cancion {
  String title;
  String lyrics;
  String url;
  String genre;
  int repeticiones ;

  Cancion({
    required this.title,
    required this.lyrics,
    required this.url,
    required this.genre,
    this.repeticiones=0
  });
  //metodo para volver el lyrics de string multilinea en una lista de strings
  List<String> separarPalabrasLyrics() {
    return lyrics.split(' ');}

  List<String> get lyricsSplitted => lyrics.split('\n');
  

// metodo para obtener el titulo
String titulo (Cancion canciones){
  String titulo=canciones.title;
  return titulo;
}
 

 
  }


class User {
  String name;
  String lastname;
  int edad;
  String apodo;
  int completedSongs ;
  int puntosObtenido ;

  User({
    required this.name,
    required this.lastname,
    required this.edad,
    required this.apodo,
    this.completedSongs=0,
    this.puntosObtenido=0
  });
}

