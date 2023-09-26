import 'dart:math';

class Braincal{
  Braincal({this.height,this.weight});
  final int? height;
  final int? weight;
  double? _ans;
  String Bmical(){
   _ans= weight! / pow(height!/100, 2);
    return _ans!.toStringAsFixed(1);

  }
  String check(){
    if(_ans! >= 25){
      return 'overweight';
    }
    else if(_ans! > 18.5){
      return 'Nomal';
    }
    else{
      return'underWeight';
    }
  }
  String feebad(){
    if(_ans! >= 25){
      return 'YOUR HAVE THAN NORMAL BODY WEIGHT,TRY TO EXCERCISE MORE';
    }
    else if(_ans! > 18.5){
      return 'YOUR NORMAL BODY WEIGHT,GOOD JOB';
    }
    else{
      return'YOU HAVE LOWER THAN NORMAL BODY WEIGHT,TRY TO EAT MORE';
    }
  }
}