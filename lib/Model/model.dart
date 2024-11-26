class Model{
  final int id;
  final String username;
  final String name;
  final String email;

  Model({required this.id,required this.username,required this.name,required this.email});

  factory Model.fromJson(Map<String,dynamic>json){
    return Model(id: json['id'],username: json['username'],name: json['name'],email: json['email']);
  }

  Map<String,dynamic>toJson(){
    return {'id':id,'username':username,'name':name,'email':email};
  }
 
}
