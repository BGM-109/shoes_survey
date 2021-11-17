import 'package:flutter/foundation.dart';

class DetailScreenViewModel with ChangeNotifier {
  int _count = 0;
  final bool _isPicked = false;


  int get count => _count;
  bool get isPicked => _isPicked;

  void countUp() {
    _count++;
    notifyListeners();
  }

  void countDown() {
    _count--;
    notifyListeners();
  }

  void countClear(){
    //카운팅을 초기화한다.
  }

  void loadComments(){
    //댓글을 불러온다
  }

  void showClock(){
    //시간을보여준다? 미정 메모리 때문에
  }

  void getPrice(){
    //크림에서 스크랩해온다
  }



}
