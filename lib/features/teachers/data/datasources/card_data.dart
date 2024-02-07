class CardData {
  final String imageAsset;
  final String nombre;
  final String apellido;
  final String curso;

  CardData({
    required this.imageAsset,
    required this.nombre,
    required this.apellido,
    required this.curso,
  });

}
   final List<CardData> candidates  = [
    CardData(
      imageAsset: 'assets/images/svgs/person.svg',
      apellido: 'Pardo Robles',
      nombre: 'Liliana Maria',
      curso: 'Teoría de  Comunicación I',
    ),
    CardData(
      imageAsset: 'assets/images/svgs/star.svg',
      apellido: 'Salinas Reyes',
      nombre: 'Emir André',
      curso: 'Fundamentos de Scrum 1',
    ),
    CardData(
      imageAsset: 'assets/images/svgs/person.svg',
      apellido: 'Lopez Mendes',
      nombre: 'Cesar Enrique',
      curso: 'Fundamentos de Programacion 1',
    ),
    CardData(
      imageAsset: 'assets/images/svgs/star.svg',
      apellido: 'Castillo Rojas',
      nombre: 'Pedro',
      curso: 'Fundamentos de Corrupcion',
    ),

  ];