import 'status_range_comment.dart';

class Functionality {
  Functionality({required this.height, required this.weight});

  int height;
  int weight;
  int src = 0;

  List<StatusRangeComment> comments = [
    StatusRangeComment(
      status: 'UNDER WEIGHT',
      range: '18.4kg/m2 or LESS',
      comment: 'You need to eat more nutritious food to gain more weight',
    ),
    StatusRangeComment(
      status: 'NORMAL WEIGHT',
      range: '18.5 - 24.9kg/m2',
      comment: 'You have a good body weight. Good job',
    ),
    StatusRangeComment(
      status: 'OVER WEIGHT',
      range: '25 - 29.9kg/m2',
      comment: 'You need diet a bit and exercise more often',
    ),
    StatusRangeComment(
      status: 'OBESITY(OBESE CLASS I)',
      range: '30 - 34.9kg/m2',
      comment:
          'You need to be on diet and exercise often. Visit the doctor for more medical assistance',
    ),
    StatusRangeComment(
      status: 'OBESITY (OBESE CLASS II)',
      range: '35 - 39.9kg/m2',
      comment:
          'You need to be on diet and exercise more often. Visit the doctor for more medical assistance',
    ),
    StatusRangeComment(
      status: 'OBESITY(OBESE CLASS III)',
      range: '40kg/m2 or ABOVE',
      comment:
          'You need to be on diet and exercise more often. Visit the doctor for more medical assistance',
    ),
  ];

  double calculateBmi() {
    double calculatedBmi = (weight) / ((height * height) / 10000);
    return calculatedBmi;
  }

  String getStatus() {
    return comments[src].status;
  }

  String getRange() {
    return comments[src].range;
  }

  String getComment() {
    return comments[src].comment;
  }

  void comment({required double calculatedBmi}) {
    if (calculatedBmi <= 18.49) {
      src = 0;
    } else if (calculatedBmi <= 24.99) {
      src = 1;
    } else if (calculatedBmi <= 29.99) {
      src = 2;
    } else if (calculatedBmi <= 34.99) {
      src = 3;
    } else if (calculatedBmi <= 39.99) {
      src = 4;
    } else {
      src = 5;
    }
  }
}
