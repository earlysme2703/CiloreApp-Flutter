import 'package:cilore/models/destination_model.dart';
import 'package:cilore/utils/const.dart';
import 'package:flutter/material.dart';

class DetailDestinasi extends StatefulWidget {
  final TravelDestination destination;
  const DetailDestinasi({super.key, required this.destination});

  @override
  State<DetailDestinasi> createState() => _DetailDestinasiState();
}

class _DetailDestinasiState extends State<DetailDestinasi> {
  PageController pageController = PageController();
  int pageView = 0;
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        // Background color with overlay image from CDN
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(35, 21, 21, 1),
            image: DecorationImage(
              image: NetworkImage(
                  "https://ucarecdn.com/0e34b478-b993-4d58-a88d-a765b8b8f5a4/backround.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                const Color.fromRGBO(35, 21, 21, 1).withOpacity(0.8),
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Column(
          children: [
            buildAppBar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: [
                          PageView(
                            controller: pageController,
                            onPageChanged: (value) {
                              setState(() {
                                pageView = value;
                              });
                            },
                            children: List.generate(
                              widget.destination.image!.length,
                              (index) => Image.network(
                                fit: BoxFit.cover,
                                widget.destination.image![index],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Spacer(),
                              GestureDetector(
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  margin: const EdgeInsets.only(
                                      right: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: widget.destination.image!.length -
                                                  1 !=
                                              pageView
                                          ? NetworkImage(
                                              widget.destination
                                                  .image![pageView + 1],
                                            )
                                          : NetworkImage(
                                              widget.destination.image![0],
                                            ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                          widget.destination.image!.length,
                                          (index) => GestureDetector(
                                            onTap: () {
                                              if (pageController.hasClients) {
                                                pageController.animateToPage(
                                                    index,
                                                    duration: const Duration(
                                                        milliseconds: 500),
                                                    curve: Curves.easeInOut);
                                              }
                                            },
                                            child: AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              height: 4,
                                              width: 17,
                                              margin: const EdgeInsets.only(
                                                  right: 5),
                                              decoration: BoxDecoration(
                                                color: pageView == index
                                                    ? Colors.black
                                                    : Colors.black
                                                        .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.destination.name,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Icon(
                                                    Icons.location_on_outlined,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    widget.destination.location,
                                                    style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber[800],
                                                    size: 23,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    widget.destination.rate
                                                        .toString(),
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '(${widget.destination.review} reviews)',
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tambahkan deskripsi review di sini
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    color: Colors.white, // Latar belakang putih
                    child: Text(
                      widget.destination.description, // Menampilkan deskripsi
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.5, // Jarak antar baris
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(7, 7, 7, 0.267),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                ),
                TextButton(
                  onPressed: () {
                    // Aksi tambahkan ke wishlist
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kButtonColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Tambahkan Ke Wishlist',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget buildAppBar() {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(35, 21, 21, 1),
      image: DecorationImage(
        image: NetworkImage(
            "https://ucarecdn.com/0e34b478-b993-4d58-a88d-a765b8b8f5a4/backround.png"),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          const Color.fromRGBO(35, 21, 21, 1).withOpacity(0.8),
          BlendMode.darken,
        ),
      ),
    ),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white, // Sesuaikan warna dengan tema gelap
              ),
            ),
            const Text(
              "Cilore App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 48), // Placeholder untuk menjaga alignment
          ],
        ),
      ),
    ),
  );
}
}