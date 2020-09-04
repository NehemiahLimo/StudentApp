class Student{
  int _id;
  String _firstname;
  String _lastname;
  int _gender;

  Student(this._firstname, this._lastname, this._gender);
  Student.WithId(this._id,this._firstname, this._lastname, this._gender);

  int get Id =>_id;
  String get firstName =>_firstname;
  String get lastName =>lastName;
  int get gender => _gender;

  set firstName(String newFirstName){
    _firstname = newFirstName;
  }
  set lastName(String newLastName){
    _lastname  = newLastName;
  }
  set gender(int newGender){
    _gender = newGender;
  }

  Map<String,dynamic> toMap(){
    var map = Map<String, dynamic>();
    map["firstName"] = _firstname;
    map["lastName"] = _lastname;
    map["gender"] = _gender;

    if(_id ==null){
      map["id"] = _id;
    }
    return map;
  }

  Student.fromObject(dynamic o){
    this._id= o["id"];
    this._firstname= o["_firstname"];
    this._lastname= o["_lastname"];
    this._gender= o["_gender"];


  }

}