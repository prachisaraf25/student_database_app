class Student {
  int id;
  String name;
  String branch;

  Student({this.id, this.name, this.branch});

  //Converts map to object
  Student.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.branch = map['branch'];
  }

  //Converts object to map and return it
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();

    map['id'] = this.id;
    map['name'] = this.name;
    map['branch'] = this.branch;

    return map;
  }
}
