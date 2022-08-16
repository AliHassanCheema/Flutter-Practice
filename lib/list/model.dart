class Person{
  int? id;
  String? name;
  Person(this.id, this.name);

  @override
  String toString() {
    String st = '';
      st += "Id:: $id\n";
      st += "name:: $name\n";
    return st;
  }
}