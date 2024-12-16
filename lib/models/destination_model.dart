import 'dart:math';

Random random = Random();
const description =
   'Cianjur menawarkan pesona alam dan budaya yang memukau. Dari pegunungan hijau yang menjulang hingga sumber air panas alami, setiap sudut wilayah ini menyimpan keindahan dan petualangan yang menunggu untuk dijelajahi. Destinasi wisata di Cianjur menghadirkan perpaduan sempurna antara keindahan alam, kearifan lokal, dan pengalaman yang tak terlupakan.';

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<TravelDestination> listDestination = [
  // Popular destinations
 TravelDestination(
      id: 1,
      name: "Curug Cigangsa",
      category: 'popular',
      image: [
        "https://th.bing.com/th/id/OIP.lEnHO22HpBb-9IRwMq3oSgHaLG?rs=1&pid=ImgDetMain",
        "https://www.wandertooth.com/wp-content/uploads/2022/07/iceland-232-of-810-1024x1024.jpg",
        "https://images5.alphacoders.com/692/692660.jpg",
        "https://photographylife.com/wp-content/uploads/2015/03/20130523-0169-308-Edit.jpg",
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 50,
      description: description,
      rate: 4.7),
  TravelDestination(
      id: 2,
      name: "Pemandian Air Panas",
      category: 'popular',
      image: [
      "https://th.bing.com/th/id/R.9abe10f8e979ca0f2f8809dd4d5742c9?rik=8LY2A3F6Pdb0sQ&riu=http%3a%2f%2fkatalogwisata.com%2fwp-content%2fuploads%2f2016%2f08%2fAir-Panas-Ciater.jpg&ehk=I0AJklpVcExdFjGm8vWh2Tthxz6rgUTT6YIoAWTX9%2fI%3d&risl=&pid=ImgRaw&r=0",
      "https://cdn.idntimes.com/content-images/post/20220111/269649724-613013466487881-2122043062242428160-n-f2a45e0be1da6452727ff7a4fc0e03dd.jpg",
      "https://travelspromo.com/wp-content/uploads/2022/11/kolam-pemandian-air-panas-pariban.webp",
      "https://th.bing.com/th/id/OIP.RijQlIJ9K_4l0up1j8Wa6AHaFj?w=768&h=576&rs=1&pid=ImgDetMain",
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 75,
      description: description,
      rate: 4.8),
  TravelDestination(
      id: 3,
      name: "Gunung Gede Pangrango",
      category: 'popular',
      image: [
        "https://3.bp.blogspot.com/-oeytKsJek20/UyEQ2VdneDI/AAAAAAAACO4/krDQxPDYJE8/s1600/puncak+pangrango.jpg",
        "https://th.bing.com/th/id/OIP.L934SJmX6fhDQICQIYkfrwHaE8?rs=1&pid=ImgDetMain",
        "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/24/2023/05/22/Puncak-Pangrango-tampak-dari-Puncak-Gede-Agus-Jaya-Saputra-1024x682-892258488.jpg",
        "https://beritajateng.tv/wp-content/uploads/2024/02/img_2024_02_05_07_21_50.jpg",
      ],
      location: 'Cipanas, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 100,
      description: description,
      rate: 4.9),
  TravelDestination(
      id: 4,
      name: "Situ Gunung Cianjur",
      category: 'popular',
        image: [
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/05/20/FotoJet-2023-05-20T060829927-1000201862.jpg",
        "https://jagoantravel.com/admin/gambar/situ-gunung-2.jpg",
        "https://www.jabarnews.com/wp-content/uploads/2023/04/Situ-Gunung.jpg",
        "https://rakaminstudent.com/wp-content/uploads/2021/07/Morning_at_Situ_Gunung_by_thesaintdevil.jpg",
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 60,
      description: description,
      rate: 4.6),

  // Recommended destinations
  TravelDestination(
      id: 5,
      name: "Batagor Cipanas",
      category: 'makanan',
      image: [
      "https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-1.5",
      "https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-1.5",
      "https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-1.5",
      "https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-1.5",
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description: description,
      rate: 4.6),
  TravelDestination(
      id: 6,
      name: "Fried Chicken Cipanas",
      category: 'makanan',
      image: [
        "https://images.unsplash.com/photo-1426869981800-95ebf51ce900?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1694853651800-3e9b4aa96a42?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1588923930978-3f8c78001ec5?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1627378378952-a736d8e12219?q=80&w=1952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cipanas, Cianjur',
      review: random.nextInt(250) + 20,
      price: 120,
      description: description,
      rate: 4.5),
  TravelDestination(
      id: 7,
      name: "Mie Ayam Cipanas",
      category: 'makanan',
      image: [
      "https://cdn.idntimes.com/content-images/community/2023/01/fromandroid-8886f5fc717445fe7be16b7a9e85521a.jpg",
      "https://soyummyrecipes.co.uk/wp-content/uploads/2023/04/Mie-ayam.jpg.webp",
      "https://imgx.sonora.id/crop/0x0:0x0/x/photo/2021/12/16/mie-ayamjpg-20211216030049.jpg",
      "https://th.bing.com/th/id/OIP.x6jCOmXyVq2O29aXG1vlKAHaEt?rs=1&pid=ImgDetMain",
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description: description,
      rate: 4.7),
  TravelDestination(
      id: 8,
      name: "Jus Buah",
      category: 'makanan',
      image: [
        "https://cdn-brilio-net.akamaized.net/news/2019/10/30/173149/1119682-1000xauto-12-cara-membuat-jus-buah-naga-merah-enak-dan-segar.jpg",
        "https://4.bp.blogspot.com/-cZIM4t4i834/WRPV6Ql01ZI/AAAAAAAAKAI/WkY8ikyh6nkj1n0oT2jgkrpaXOmnc1izQCLcB/s1600/fruit%2Bjuice.jpg",
        "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2022/08/30101415/Sering-Konsumsi-Jus-Stroberi-Ini-X-Manfaat-yang-Diperoleh.jpg",
        "https://th.bing.com/th/id/OIP.9otFzN-DL6PUuzzYHXtr7AHaEK?rs=1&pid=ImgDetMain",
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 200,
      description: description,
      rate: 4.7),
  TravelDestination(
      id: 9,
      name: "Kota Bunga",
      category: 'popular',
      image: [
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/01/16/1931024082.jpg",
        "https://travelspromo.com/wp-content/uploads/2018/05/little-venice-kota-bunga.jpg",
        "https://i.ytimg.com/vi/gdi7L32lltM/maxresdefault.jpg",
        "https://www.fankymedia.com/wp-content/uploads/2020/03/Little-Venice-Cianjur.jpg",
     ],
      location: 'Kota Bunga, Cipanas',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
];
