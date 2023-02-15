import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int duration = 4;

  @observable
  int score1 = 0;

  @observable
  int score2 = 0;

  @action
  void setScore1(int order) {
    if (order == 1) {
      score1 = true_ - tabu_;
    } else {
      score2 = true_ - tabu_;
    }
  }

  @action
  void setScore2() {
    score1 = true_ - tabu_;
  }

  @observable
  int counter = 0;

  @observable
  int true_ = 0;

  @observable
  int tabu_ = 0;

  @observable
  int pas_ = 4;

  @action
  void increment_true({String? text}) {
    true_++;
    counter++;
  }

  @action
  void decrement_true() {
    true_--;
  }

  @action
  void reset_state() {
    pas_ = 4;
    counter = 0;
    true_ = 0;
    tabu_ = 0;
  }

  @action
  void decrement_pas() {
    if (pas_ > 0) {
      counter++;
      pas_--;
    } else {
      print("(pas) alread zero");
    }
  }

  @action
  void increment_tabu() {
    tabu_++;
    counter++;
  }
}
