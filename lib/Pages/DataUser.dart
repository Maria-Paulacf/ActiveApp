

class User {
  final String name;
  final String lastname;
  final int age;
  final int weight;
  final int height;

  User({
    required this.name,
    required this.lastname,
    required this.age,
    required this.weight,
    required this.height,
  });
  Map<String,dynamic> toJson() =>{
    'name': name,
    'lastname': lastname,
    'age': age,
    'weight': weight,
    'height': height,
  };
}
