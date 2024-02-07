import 'package:flutter/material.dart';
import 'package:wabu/features/smash/presentation/controllers/card_data.dart';
import 'package:fluttertoast/fluttertoast.dart';
enum CardStatus {like, dislike}

class CardProvider extends ChangeNotifier{
  List<CardData> _cardDataList= [];
  bool _isDragging = false;
  double  _angle = 0;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;

  List<CardData> get cardDataList=> _cardDataList;
  bool get isDragging => _isDragging;
  Offset get position => _position;
  double get angle => _angle;

  CardProvider(){
    resetUsers();
  }

  void setScreenSize(Size screenSize) => _screenSize = screenSize;

  void startPosition(DragStartDetails details) {
    _isDragging = true;
    notifyListeners();
  }

  void updatePosition(DragUpdateDetails details) {
    _position += details.delta;

    final x = _position.dx;
    _angle = 45 * x/_screenSize.width;
    notifyListeners();
  }

  void endPosition() {
    _isDragging = false;

    final status = getStatus();

    if(status != null){
      Fluttertoast.cancel();
      Fluttertoast.showToast(
        msg: status.toString().split('.').last.toUpperCase(),
        fontSize:30
      );
    }

    switch (status) {
      case  CardStatus.like:
        like();
        break;
      case  CardStatus.dislike:
        dislike();
        break;
      default:
        resetPosition;
    }

    resetPosition();
  }

  void resetPosition(){
    _isDragging = false;
    _position = Offset.zero;
    _angle = 0;
    notifyListeners();
  }

  CardStatus? getStatus() {
    final x = _position.dx;
    final delta = 100;

    if(x>=delta) {
      return CardStatus.like; 
    } else if(x<= -delta){
      return CardStatus.dislike;
    }
  }

  void like(){
    _angle =20;
    _position += Offset(2 *_screenSize.width /2, 0);
    
    notifyListeners();
  }

  void dislike() {
    _angle = -20;
    _position -= Offset(2 *_screenSize.width, 0);
  
  }
  void resetUsers(){
    _cardDataList = <CardData> [
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
      imageAsset: 'assets/images/svgs/star.svg',
      apellido: 'Castillo Rojas',
      nombre: 'Pedro',
      curso: 'Fundamentos de Corrupción',
    ),
    ].reversed.toList();
    notifyListeners();
  }
}