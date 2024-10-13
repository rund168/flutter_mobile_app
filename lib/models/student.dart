class Student{
  int? id;
  String? name;
  String? gender;

  Student(this.id, {this.name, this.gender});
}
void main(){
  Student student = Student(
    1,
    name: "RunD",
    gender: "Male",
  );
  print(student.name);
}