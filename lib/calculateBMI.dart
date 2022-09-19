import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter your height?");
  String? height = stdin.readLineSync();
  print("Enter your weight?");
  String? weight = stdin.readLineSync();

  if (height != null && weight != null){
    double h = double.parse(height) * 0.01;
    double w = double.parse(weight);
    
    double bmi = w/(h*h);
    bmi = double.parse(bmi.toStringAsFixed(1));
    print("Result ${bmi}");

    var result = "";
    if (bmi < 17) {
      result = "underweight";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      result = "normal weight";
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      result = "overweight";
    } else {
      result = "obesity";
    }
    
    print("Result You have a ${result}");
  }
}
