import 'dart:io';
import 'dart:math';

class Cancion {
  String titulo;
  String url;
  String lyrics;
  String genero;

  Cancion(this.titulo, this.url, this.lyrics, this.genero);

  List<String> separarPalabrasLyrics() {
    return lyrics.split(' ');
  }
}

void main() {
  Cancion cancion = Cancion(
    "chan chan",
    "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=video&cd=&cad=rja&uact=8&ved=2ahUKEwjwq4yf2fz-AhUnSjABHc8JAaMQtwJ6BAgIEAI&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D3GWK6DU1KMk&usg=AOvVaw0AEIRQVB5d6AFdAJ5WEO3I",
    '''
    De Alto Cedro voy para Marcané
Llego a Cueto, voy para Mayarí
De Alto Cedro voy para Marcané
Llego a Cueto, voy para Mayarí
De Alto Cedro voy para Marcané
Llego a Cueto, voy para Mayarí
El cariño que te tengo
No te lo puedo negar
Se me sale la babita
Yo no lo puedo evitar
Cuando Juanica y Chan Chan
En el mar cernían arena
Como sacudía el jibe
A Chan Chan le daba pena
Limpia el camino de pajas
Que yo me quiero sentar
En aquel tronco que veo
Y así no puedo llegar
De alto Cedro voy para Marcané
Llego a Cueto, voy para Mayarí
De alto Cedro voy para Marcané
Llego a Cueto, voy para Mayarí
    ''',
    "Género de la canción",
  );

  List<String> palabrasLyrics = cancion.separarPalabrasLyrics();

  Random random = Random();
  int indicePalabraFaltante = random.nextInt(palabrasLyrics.length);
  String palabraFaltante = palabrasLyrics[indicePalabraFaltante];
  palabrasLyrics[indicePalabraFaltante] = '______'; // Indicador de palabra faltante

  print('Adivina la palabra que falta en la letra de la canción:');
  print(palabrasLyrics.join(' '));

  String respuestaUsuario = stdin.readLineSync() ?? '';

  if (respuestaUsuario.trim().toLowerCase() == palabraFaltante.toLowerCase()) {
    print('¡Correcto! La palabra que faltaba era: $palabraFaltante');
  } else {
    print('Incorrecto. La palabra que faltaba era: $palabraFaltante');
  }
}

