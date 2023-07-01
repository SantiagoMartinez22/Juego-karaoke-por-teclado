import 'dart:io';
import 'clases.dart';
import 'dart:math';
import 'canciones.dart';

//lista cancion a jugar
void menu(){
  bool band=true;
  User jugador=registrarUser();
  do {
    print(''' 
█▀ █▀▀ █░░ █▀▀ █▀▀ █▀▀ █ █▀█ █▄░█ ▄▀█   ▀█▀ █░█   █▀█ █▀█ █▀▀ █ █▀█ █▄░█
▄█ ██▄ █▄▄ ██▄ █▄▄ █▄▄ █ █▄█ █░▀█ █▀█   ░█░ █▄█   █▄█ █▀▀ █▄▄ █ █▄█ █░▀█''');
    int selection=inquirer("Ingresa 1 para jugar, 2 para ver los resultados, 3 para agregar un cancion, 0 para salir", 1);
     
    switch(selection){
      case 1:
      for (int i=0;i<canciones.length;i++){
        print( " ingrese el numero de la cancion que quiere $i con titulo ${canciones[i].title}");
      }
      int cancionselect=int.parse(stdin.readLineSync()??"1");
      jugar(canciones[cancionselect], jugador);
      band=true;
      break;

    
     case 2:
      print("Resultados");
      print("El jugador ${jugador.apodo} completo ${jugador.completedSongs} canciones, obtuvo ${jugador.puntosObtenido} puntos");
      band=true;
      break;
     case 3:
      registrarCancion();
      band=true;
      break;
    case 0:
      print('''
  █▀▀ █░░   █▀█ █▀█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄▀█ ▄▀█   ▄▀█   █▀▀ █ █▄░█ ▄▀█ █░░ █ ▀█ ▄▀█ █▀▄ █▀█
  ██▄ █▄▄   █▀▀ █▀▄ █▄█ █▄█ █▀▄ █▀█ █░▀░█ █▀█   █▀█   █▀░ █ █░▀█ █▀█ █▄▄ █ █▄ █▀█ █▄▀ █▄█''');
      print("\n");
      print('''
      ██████╗░██████╗░░█████╗░░██████╗░██████╗░░█████╗░███╗░░░███╗░█████╗░  ██╗░░██╗███████╗░█████╗░██╗░░██╗░█████╗░
      ██╔══██╗██╔══██╗██╔══██╗██╔════╝░██╔══██╗██╔══██╗████╗░████║██╔══██╗  ██║░░██║██╔════╝██╔══██╗██║░░██║██╔══██╗
      ██████╔╝██████╔╝██║░░██║██║░░██╗░██████╔╝███████║██╔████╔██║███████║  ███████║█████╗░░██║░░╚═╝███████║██║░░██║
      ██╔═══╝░██╔══██╗██║░░██║██║░░╚██╗██╔══██╗██╔══██║██║╚██╔╝██║██╔══██║  ██╔══██║██╔══╝░░██║░░██╗██╔══██║██║░░██║
      ██║░░░░░██║░░██║╚█████╔╝╚██████╔╝██║░░██║██║░░██║██║░╚═╝░██║██║░░██║  ██║░░██║███████╗╚█████╔╝██║░░██║╚█████╔╝
      ╚═╝░░░░░╚═╝░░╚═╝░╚════╝░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝  ╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝░╚════╝░

      ██████╗░░█████╗░██████╗░  ░██████╗░█████╗░███╗░░██╗████████╗██╗░█████╗░░██████╗░░█████╗░
      ██╔══██╗██╔══██╗██╔══██╗  ██╔════╝██╔══██╗████╗░██║╚══██╔══╝██║██╔══██╗██╔════╝░██╔══██╗
      ██████╔╝██║░░██║██████╔╝  ╚█████╗░███████║██╔██╗██║░░░██║░░░██║███████║██║░░██╗░██║░░██║
      ██╔═══╝░██║░░██║██╔══██╗  ░╚═══██╗██╔══██║██║╚████║░░░██║░░░██║██╔══██║██║░░╚██╗██║░░██║
      ██║░░░░░╚█████╔╝██║░░██║  ██████╔╝██║░░██║██║░╚███║░░░██║░░░██║██║░░██║╚██████╔╝╚█████╔╝
      ╚═╝░░░░░░╚════╝░╚═╝░░╚═╝  ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░╚═╝░╚═════╝░░╚════╝░

      ███╗░░░███╗░█████╗░██████╗░████████╗██╗███╗░░██╗███████╗███████╗  ██╗░░░██╗░█████╗░██████╗░░█████╗░
      ████╗░████║██╔══██╗██╔══██╗╚══██╔══╝██║████╗░██║██╔════╝╚════██║  ╚██╗░██╔╝██╔══██╗██╔══██╗██╔══██╗
      ██╔████╔██║███████║██████╔╝░░░██║░░░██║██╔██╗██║█████╗░░░░███╔═╝  ░╚████╔╝░███████║██████╔╝███████║
      ██║╚██╔╝██║██╔══██║██╔══██╗░░░██║░░░██║██║╚████║██╔══╝░░██╔══╝░░  ░░╚██╔╝░░██╔══██║██╔══██╗██╔══██║
      ██║░╚═╝░██║██║░░██║██║░░██║░░░██║░░░██║██║░╚███║███████╗███████╗  ░░░██║░░░██║░░██║██║░░██║██║░░██║
      ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚══════╝╚══════╝  ░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝''');
      band=false;
      break;
    default:
      print("la opcion ingresada no es valida");
      break;
     
   

    }
    
  } while (band==true);
}
// funcion registrar usuario y crear un objeto usuario
User registrarUser() {
  print('''
██╗███╗░░██╗░██████╗░██████╗░███████╗░██████╗░█████╗░  ████████╗██╗░░░██╗░██████╗
██║████╗░██║██╔════╝░██╔══██╗██╔════╝██╔════╝██╔══██╗  ╚══██╔══╝██║░░░██║██╔════╝
██║██╔██╗██║██║░░██╗░██████╔╝█████╗░░╚█████╗░███████║  ░░░██║░░░██║░░░██║╚█████╗░
██║██║╚████║██║░░╚██╗██╔══██╗██╔══╝░░░╚═══██╗██╔══██║  ░░░██║░░░██║░░░██║░╚═══██╗
██║██║░╚███║╚██████╔╝██║░░██║███████╗██████╔╝██║░░██║  ░░░██║░░░╚██████╔╝██████╔╝
╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝╚══════╝╚═════╝░╚═╝░░╚═╝  ░░░╚═╝░░░░╚═════╝░╚═════╝░

██████╗░░█████╗░████████╗░█████╗░░██████╗
██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔════╝
██║░░██║███████║░░░██║░░░██║░░██║╚█████╗░
██║░░██║██╔══██║░░░██║░░░██║░░██║░╚═══██╗
██████╔╝██║░░██║░░░██║░░░╚█████╔╝██████╔╝
╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═════╝░''');

   print("\n");
  String name = inquirer("ingrese su nombre", 3);
  String lastname = inquirer("ingrese su apellido", 3);
  int edad = inquirer("ingrese su edad", 1);
  String apodo = inquirer("ingrese su apodo o pseudonimo", 3);
  User usuario = User(name: name, lastname: lastname, edad: edad, apodo: apodo);
  return usuario;
}

// funcion para registrar una cancion o crear un objeto tipo cancion
void registrarCancion() {
  print('''
██████╗░███████╗░██████╗░██╗░██████╗████████╗██████╗░░█████╗░  ████████╗██╗░░░██╗
██╔══██╗██╔════╝██╔════╝░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗  ╚══██╔══╝██║░░░██║
██████╔╝█████╗░░██║░░██╗░██║╚█████╗░░░░██║░░░██████╔╝███████║  ░░░██║░░░██║░░░██║
██╔══██╗██╔══╝░░██║░░╚██╗██║░╚═══██╗░░░██║░░░██╔══██╗██╔══██║  ░░░██║░░░██║░░░██║
██║░░██║███████╗╚██████╔╝██║██████╔╝░░░██║░░░██║░░██║██║░░██║  ░░░██║░░░╚██████╔╝
╚═╝░░╚═╝╚══════╝░╚═════╝░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝  ░░░╚═╝░░░░╚═════╝░

░█████╗░░█████╗░███╗░░██╗░█████╗░██╗░█████╗░███╗░░██╗
██╔══██╗██╔══██╗████╗░██║██╔══██╗██║██╔══██╗████╗░██║
██║░░╚═╝███████║██╔██╗██║██║░░╚═╝██║██║░░██║██╔██╗██║
██║░░██╗██╔══██║██║╚████║██║░░██╗██║██║░░██║██║╚████║
╚█████╔╝██║░░██║██║░╚███║╚█████╔╝██║╚█████╔╝██║░╚███║
░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝░╚════╝░╚═╝░╚════╝░╚═╝░░╚══╝''');
print("\n");
  String title = inquirer("ingrese el titulo de la cancion", 3);
  String url = inquirer("ingrese el url de la cancion", 3);

  //revisar como ingresar lirycs multilinea
  String lyrics = ingresarLyrics();
  
  String genre = inquirer("ingrese el genero de la cancion", 3);
  Cancion cancion =Cancion(title: title, url: url, lyrics: lyrics, genre: genre);
  canciones.add(cancion);
}

// preguntador
dynamic inquirer(String question, int questionType, [int nMax = 3]) {
  print(question); 
  String? data = stdin.readLineSync(); //Esperamos la respuesta del usuario

  switch (questionType) {
    case 1: //En caso de que espere una respuesta tipo int
      try {
        return int.parse(data ?? '0');
      } on FormatException {
        //en caso de que tenga un string inválido
        return 1;
      }
    case 2: //En caso de que espere un double
      return double.parse(data ?? '0.0');
    case 3: //En caso de que espere un String de nombre
      return data ?? 'NoName';

    default: //En caso de que espere un String cualquiera
      return data ?? '';
  }
}

void jugar(Cancion cancionpru, User jugador) {
  List<String> canciontrabajar = cancionpru.lyricsSplitted;
  print(canciontrabajar);
  print("\n");
  List<List<String>> aux = [];

  for (int i = 0; i < cancionpru.lyricsSplitted.length; i++) {
    List<String> linea = cancionpru.lyricsSplitted[i].split(' ');
    aux.add(linea);
    linea.length;
    int randomizer = Random().nextInt(linea.length);
    int lengthPalabraOculta = linea[randomizer].length;
    //Ciclo de simulación de muestra
    String auxiliar = '';
    for (int j = 0; j < linea.length; j++) {
      if (j != randomizer) {
        auxiliar = auxiliar + linea[j];
      } else {
        int aux = linea[j].length;
        auxiliar = auxiliar + "*" * lengthPalabraOculta;
      }

      auxiliar = auxiliar + ' ';
    }
    print(auxiliar);
    print("\n");
    print('***--------------------Cual es la palabra que le falta?--------------------***');
    String palabra = stdin.readLineSync() ?? '';
    // condicional que compara la palabra faltante con la ingresada y muestra la correcta en caso de que la ingresada no fue correcta, o suma puntos si si fue correcta.
    if (palabra.toLowerCase() == linea[randomizer].toLowerCase()) {
      jugador.puntosObtenido += 1;
      print('¡Respuesta correcta!');
      print("\n");
    } else {
      jugador.puntosObtenido;
      print('La palabra ingresada no es correcta.');
      print("\n");
      print('La palabra correcta es: ${linea[randomizer]}');
    }
  }
  print("En esta cancion has ganado: ${jugador.puntosObtenido} puntos");
  jugador.completedSongs +=1;
  cancionpru.repeticiones+=1;
  
}

String ingresarLyrics(){
  print('Ingresar la letra de la cancion linea a linea, presiona una vez enter para escribir la siguiente linea, presiona 2 veces enrter para finalizar');
     var lines = <String>[];
     var line = stdin.readLineSync();
     while (line !='') {
      lines.add(line!);
      line=stdin.readLineSync();

     }
     var multilineaString =lines.join('\n');
     print('La letra de la cancion ingresada fue: ');
     print(multilineaString);
     return multilineaString;

     }
