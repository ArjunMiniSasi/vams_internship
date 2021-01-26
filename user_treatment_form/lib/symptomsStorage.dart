///Symptoms storage class for storing the selected symptoms as a list

class Symptoms {
  List<String> symptoms = [];
  add(String val) {
    symptoms.add(val);
  }

  clear(String val) {
    symptoms.remove(val);
  }
}
