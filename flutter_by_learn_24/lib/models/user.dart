class User {
  String name;
  String email;
  String Id;
  String picture;
  String gender;
  String phone;
  String website;

  User(this.name,this.email,this.Id,this.picture,this.gender,this.phone,this.website);

  User.fromJson(dynamic json)
  {
    name = json["name"];
    email = json["email"];
    Id = json["_id"];
    picture = json["picture"];
    gender = json["gender"];
    phone = json["phone"];
    website = json["website"];
  }
}