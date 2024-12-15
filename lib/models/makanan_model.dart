class MakananModel {
  String image, name;

  MakananModel({required this.image, required this.name});
}

List<MakananModel> makanan = [
  MakananModel(
      image:
          'https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-1.5',
      name: 'Batagor'),
  MakananModel(
      image:
          'https://images.unsplash.com/photo-1426869981800-95ebf51ce900?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Fried Chicken'),
  MakananModel(
      image:
          'https://images.pexels.com/photos/2365945/pexels-photo-2365945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      name: 'Mie Ayam'),
];
