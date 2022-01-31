class HealthModel{
  String? id;
  String? name;
  String? title;
  String? description;
  String? image;

  HealthModel(this.id, this.name, this.title, this.description, this.image);
  HealthModel.fromJson(Map<String,dynamic>Hm){
    id=Hm['id'];
    name=Hm['name'];
    title=Hm['title'];
    description=Hm['description'];
    image=Hm['image'];
  }
}