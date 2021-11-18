import 'package:flutter/foundation.dart';

class DetailScreenViewModel with ChangeNotifier {
  int _up = 0;
  int _down = 0;
  bool _isPolled = false;

  int get up => _up;

  int get down => _down;

  bool get isPolled => _isPolled;

  void pollCompleted() {
    _isPolled = true;
  }

  void countUp() {
    _up++;
    pollCompleted();
    notifyListeners();
  }

  void countDown() {
    _down++;
    pollCompleted();
    notifyListeners();
  }

  void countClear() {
    //카운팅을 초기화한다.
    _up = 0;
    _down = 0;
    _isPolled = false;
    notifyListeners();
  }

  void loadComments() {
    //댓글을 불러온다
  }

  void getPrice() {
    //크림에서 스크랩해온다
  }
}
