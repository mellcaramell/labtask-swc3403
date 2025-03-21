// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'exhibitions_detail_page.dart';
import 'gallery_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Enhanced featured exhibitions with descriptions
  final List<Map<String, dynamic>> _featuredExhibitions = [
    {
      'title': 'An Introduction to Islamic Calligraphy',
      'description':
          'An Introduction to Islamic Calligraphy examined one of the most important historical developments of the Islamic world. Covering more than a thousand years, it encompassed a vast geographical area: from the Iberian Peninsula in the west, to Southeast Asia and China in the east.',
      'image': 'assets/exhibition1.jpg',
      'date': 'Mar 10 - Jun 15, 2025',
      'id': 'an_introduction_to_islamic_calligraphy_exhibition',
      'openingHours': '09:30 am to 06:00 pm daily',
      'location': 'Special Gallery 2, IAMM',
      'ticketFee':
          'Adults: RM20\nStudents: RM10\nSenior (Malaysian): RM10\nSenior (Non-Malaysian): RM20\nChildren (under 6): FREE',
    },
    {
      'title': 'Hajj Journey Through the Ages',
      'description':
          'The exhibition Hajj Journey Through the Ages explored the history of the Hajj, the pilgrimage to the Holy City of Makkah and the performance of its rituals through archival photographs, inspiring oil paintings, and historical accounts.',
      'image': 'assets/exhibition2.jpg',
      'date': 'Feb 5 - May 20, 2025',
      'id': 'hajj_journey_through_the_ages_exhibition',
      'openingHours': '09:30 am to 06:00 pm daily',
      'location': 'Special Gallery 1, IAMM',
      'ticketFee':
          'Adults: RM20\nStudents: RM10\nSenior (Malaysian): RM10\nSenior (Non-Malaysian): RM20\nChildren (under 6): FREE',
    },
    {
      'title': 'Islamic Bookbinding',
      'description':
          'The Islamic Bookbinding exhibition showcased over 70 artefacts that comprehensively portrayed the beautiful elements of bookbindings from around the Islamic world.',
      'image': 'assets/exhibition3.jpg',
      'date': 'Apr 1 - Jul 30, 2025',
      'id': 'islamic_bookbinding_exhibition',
      'openingHours': '09:30 am to 06:00 pm daily',
      'location': 'Special Gallery 2, IAMM',
      'ticketFee':
          'Adults: RM20\nStudents: RM10\nSenior (Malaysian): RM10\nSenior (Non-Malaysian): RM20\nChildren (under 6): FREE',
    },
  ];

// Gallery collection items - simplified and location removed
  final List<Map<String, dynamic>> _galleryItems = [
    {
      'title': 'Architecture Gallery',
      'description':
          'Islamic architecture, the earliest and most enduring form of Islamic art, is best represented by mosques, which serve as both places of worship and community gathering. The Ka’ba in Mecca, with its powerful simplicity, remains Islam’s most sacred site. Showcasing this architectural grandeur, the IAMM features detailed scale models of significant Islamic structures, from the grand Masjid al-Haram to the diverse mosques of Southeast Asia and India’s iconic Taj Mahal. The gallery also highlights secular Islamic architecture, such as the lavishly decorated Ottoman Room, reflecting the luxury and hospitality central to Muslim culture.',
      'image': 'assets/gallery_desc1.jpg',
      'date': 'Permanent Collection',
      'id': 'architecture_gallery',
      'highlights': [
        {
          'title': 'Qibla Tiles',
          'artist': 'Ottoman Turkey',
          'year': '17th century AD/11th century AH',
          'thumbnailImage': 'assets/gallery_high1.jpg',
        },
        {
          'title': 'Tile Panel',
          'artist': 'Qajar Persia',
          'year': '19th century AD/13th century AH',
          'thumbnailImage': 'assets/gallery_high2.jpg',
        },
        {
          'title': 'Monumental Cut Tile Mosaic Mihrab Panel',
          'artist': 'Timurid Central Asia or Persia',
          'year': '14th or 15th century AD/8th or 9th century AH',
          'thumbnailImage': 'assets/gallery_high3.jpg',
        },
      ],
    },
    {
      'title': 'Ceramics Gallery',
      'description':
          'Islamic ceramics showcase remarkable creativity, blending influences from China with unique regional styles. Despite the absence of kaolin clay, Muslim potters developed innovative techniques such as tin-glazed earthenware and lustreware, producing porcelain-like finishes. Calligraphic inscriptions became a distinctive decorative element, transforming vessels into artistic expressions of faith. Over time, ceramic styles evolved from the monochrome precision of Nishapur to the vibrant turquoise glazes of Iran and the floral designs of Ottoman Iznik pottery. Tiles gained prominence, particularly in Kashan and across the Ottoman Empire, solidifying the Islamic world’s legacy in ceramic artistry.',
      'image': 'assets/gallery_desc2.jpg',
      'date': 'Permanent Collection',
      'id': 'ceramic_gallery',
      'highlights': [
        {
          'title': 'Pottery Jug With Kufic Calligraphy',
          'artist': 'Samanid Central Asia',
          'year': 'Circa 13th century AD/circa 7th century AH ',
          'thumbnailImage': 'assets/gallery_high4.jpg',
        },
        {
          'title': 'Moulded Cobalt-Blue, Black And White Jug',
          'artist': 'Kashan, Persia',
          'year': '13th century AD/7th century AH',
          'thumbnailImage': 'assets/gallery_high5.jpg',
        },
        {
          'title': 'Min’i Bowl',
          'artist': 'Persia',
          'year': '2th to 13th century AD/6th to 7th century AH',
          'thumbnailImage': 'assets/gallery_high6.jpg',
        },
      ],
    },
    {
      'title': 'China Gallery',
      'description':
          'Chinese Islamic art reflects a unique fusion of cultures, particularly in calligraphy and ceramics. The Ming Quran, created during Emperor Zhengde’s reign, showcases the revered ’Sini’ script, while Chinese calligraphic scrolls emphasize bold brushstrokes over the precision of Islamic reed pens. Cloisonné wares and bronze altar vessels often feature Islamic inscriptions, blending faith with traditional Chinese craftsmanship. While domestic ceramics rarely included calligraphy, Ming blue-and-white wares with Islamic inscriptions were highly prized. For export, China adapted its porcelain to Muslim tastes, producing specialized items like pen boxes and rosewater sprinklers for markets from Anatolia to Persia.',
      'image': 'assets/gallery_desc3.jpg',
      'date': 'Permanent Collection',
      'id': 'china_gallery',
      'highlights': [
        {
          'title': 'Large Porcelain Covered Tureen For The Ottoman Market',
          'artist': 'Jingdezhen, China',
          'year':
              'Attributed to the Qianlong Emperor’s reign 1736 – 1795 AD/1148 – 1210 AH',
          'thumbnailImage': 'assets/gallery_high7.jpg',
        },
        {
          'title': 'Canton Famille Rose Dish',
          'artist': 'Inscribed ’Salam ’Ali Ibrahim’',
          'year': 'Canton, China Dated 1287 AH/1870 AD',
          'thumbnailImage': 'assets/gallery_high8.jpg',
        },
        {
          'title': 'Opening page from a Qur’an',
          'artist': 'Signed Khalil Ibrahim Yunus al-Sini',
          'year': 'Gansu, China Dated Muharram 953 AH/March – April 1546 AD',
          'thumbnailImage': 'assets/gallery_high9.jpg',
        },
      ],
    },
    {
      'title': 'Coin & Seal Gallery',
      'description':
          'Islamic coins and seals serve as both historical records and artistic achievements. Coins, highly calligraphic with religious inscriptions, were vital for trade and governance, influencing distant regions like Anglo-Saxon England and Sweden. The Umayyads established a distinct Islamic coinage by removing images and emphasizing faith-based inscriptions, a tradition continued by later dynasties. By the 19th century, Islamic coinage adopted standardized designs for international trade. Seals, often made of jade, agate, or metal, were used for personal and official purposes, sometimes doubling as amulets. Both coins and seals offer invaluable insights into Islamic history, sovereignty, and identity.',
      'image': 'assets/gallery_desc4.jpg',
      'date': 'Permanent Collection',
      'id': 'coin_seal_gallery',
      'highlights': [
        {
          'title': 'Lapis Lazuli Seal',
          'artist': 'Qajar Persia',
          'year': 'Dated 1275 AH/1858 - 59 AD',
          'thumbnailImage': 'assets/gallery_high10.jpg',
        },
        {
          'title': 'Silver Ring with A Dirham of Sultan Abu Sa’id',
          'artist': 'Ilkhanid Persia',
          'year': 'Circa 14th century AD/circa 8th century AH',
          'thumbnailImage': 'assets/gallery_high11.jpg',
        },
        {
          'title': 'Kijang (barking deer) coin',
          'artist': 'Kelantan, Malay Peninsula',
          'year': '19th to 20th century AD/13th to 14th century AH',
          'thumbnailImage': 'assets/gallery_high12.jpg',
        },
      ],
    },
  ];

  // Method to handle navigation based on bottom navbar selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate based on selected index
    if (index == 1) {
      // Navigate to Exhibitions page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text(
                'All Exhibitions',
                style: TextStyle(color: Color(0xFF436380)),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Color(0xFF436380),
              ),
            ),
            body: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _featuredExhibitions.length,
              itemBuilder: (context, index) {
                return _buildListItem(_featuredExhibitions[index], true);
              },
            ),
          ),
        ),
      ).then((_) {
        // Reset to home tab when returning
        setState(() {
          _selectedIndex = 0;
        });
      });
    } else if (index == 2) {
      // Navigate to Gallery page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text(
                'All Galleries',
                style: TextStyle(color: Color(0xFF436380)),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Color(0xFF436380),
              ),
            ),
            body: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _galleryItems.length,
              itemBuilder: (context, index) {
                return _buildListItem(_galleryItems[index], false);
              },
            ),
          ),
        ),
      ).then((_) {
        // Reset to home tab when returning
        setState(() {
          _selectedIndex = 0;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size to make layout responsive
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: const Color(0xFFAFD5E8).withOpacity(0.4),
        title: Row(
          children: [
            Image.asset(
              'assets/museum_logo.png',
              width: 36,
              height: 36,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.museum,
                  color: Color(0xFFAFD5E8),
                );
              },
            ),
            const SizedBox(width: 10),
            const Flexible(
              child: Text(
                'Museum of Islamic Arts',
                style: TextStyle(
                  color: Color(0xFF436380),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        // Removed search and notifications buttons
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome message
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to the',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Museum of Islamic Arts',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF436380),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Featured Exhibitions
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        'Featured Exhibitions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF436380),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _onItemTapped(1); // Navigate to Exhibitions
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Exhibition cards
              SizedBox(
                height: 300,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: _featuredExhibitions.length,
                  itemBuilder: (context, index) {
                    return _buildCardItem(
                        _featuredExhibitions[index], screenWidth, true);
                  },
                ),
              ),

              const SizedBox(height: 30),

              // Gallery section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF436380),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _onItemTapped(2); // Navigate to Gallery
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Gallery cards
              SizedBox(
                height: 300,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: _galleryItems.length,
                  itemBuilder: (context, index) {
                    return _buildCardItem(
                        _galleryItems[index], screenWidth, false);
                  },
                ),
              ),

              const SizedBox(height: 30),

              // Museum info card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildMuseumInfoCard(),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFD4AF37),
        unselectedItemColor: const Color(0xFF6F8CA3),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_outlined),
            activeIcon: Icon(Icons.event),
            label: 'Exhibitions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_outlined),
            activeIcon: Icon(Icons.collections),
            label: 'Gallery',
          ),
        ],
      ),
    );
  }

  // List item builder for the "See All" pages
  Widget _buildListItem(Map<String, dynamic> item, bool isExhibition) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          if (isExhibition) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExhibitionDetailPage(
                  exhibition: item,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GalleryDetailPage(
                  gallery: item,
                ),
              ),
            );
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: SizedBox(
                height: 160,
                width: double.infinity,
                child: Image.asset(
                  item['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFAFD5E8).withOpacity(0.2),
                      height: 160,
                      width: double.infinity,
                      child: const Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 50,
                          color: Color(0xFF6F8CA3),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        isExhibition
                            ? Icons.calendar_today_outlined
                            : Icons.image_outlined,
                        size: 16,
                        color: const Color(0xFF6F8CA3),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          isExhibition ? item['date'] : item['date'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6F8CA3),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['description'],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6F8CA3),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Card builder for both exhibitions and gallery items
  Widget _buildCardItem(
      Map<String, dynamic> item, double screenWidth, bool isExhibition) {
    // Make card width responsive based on screen size
    final cardWidth = screenWidth < 400 ? screenWidth * 0.80 : 270.0;

    return Container(
      width: cardWidth,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFAFD5E8).withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Item image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: SizedBox(
              height: 140,
              width: double.infinity,
              child: Image.asset(
                item['image'],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: const Color(0xFFAFD5E8).withOpacity(0.2),
                    child: const Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: 50,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Item details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        isExhibition
                            ? Icons.calendar_today_outlined
                            : Icons.collections_outlined,
                        size: 14,
                        color: const Color(0xFF6F8CA3),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          isExhibition ? item['date'] : item['date'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6F8CA3),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  // Item description
                  Expanded(
                    child: Text(
                      item['description'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF6F8CA3),
                        height: 1.2,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      if (isExhibition) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExhibitionDetailPage(
                              exhibition: item,
                            ),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GalleryDetailPage(
                              gallery: item,
                            ),
                          ),
                        );
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFFD4AF37)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 36),
                    ),
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontWeight: FontWeight.w600,
                      ),
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

  Widget _buildMuseumInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFD4AF37).withOpacity(0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFAFD5E8).withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Visitor Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF436380),
            ),
          ),
          SizedBox(height: 12),
          // Opening Hours
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.access_time_outlined,
                size: 20,
                color: Color(0xFFD4AF37),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Opening Hours:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tuesday to Sunday: 9:00 AM - 6:00 PM\nMonday: Closed\nLast admission: 5:00 PM',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          // Ticket Prices
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.confirmation_number_outlined,
                size: 20,
                color: Color(0xFFD4AF37),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ticket Prices:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Adults: RM20\nStudents: RM10\nSenior (Malaysian): RM10\nSenior (Non-Malaysian): RM20\nChildren (under 6): FREE',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          // Location
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 20,
                color: Color(0xFFD4AF37),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Islamic Arts Museum Malaysia\nJalan Lembah Perdana\n50480 Kuala Lumpur',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          // Contact
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.phone_outlined,
                size: 20,
                color: Color(0xFFD4AF37),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Phone: +603-2092 7070\nEmail: info@iamm.org.my',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6F8CA3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
