abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar() => print('estoy volando!');
}

mixin Caminante{
  void caminar() => print('estoy caminado!');
}

mixin Nadador{
  void nadar() => print('estoy nadando!');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador{}
class Gato extends Mamifero with Caminante{}


class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Nadador, Volador{}


class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
  
}