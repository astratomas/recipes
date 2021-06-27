class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Spaghetti', 'assets/images/1.jpg'),
    Recipe('Tomato', 'assets/images/2.jpg'),
    Recipe('Chocolate', 'assets/images/3.jpg'),
    Recipe('Taco', 'assets/images/4.jpg'),
    Recipe('Pizza', 'assets/images/5.jpg'),
  ];
}
