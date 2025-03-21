import 'package:flutter/material.dart';

class GalleryDetailPage extends StatelessWidget {
  final Map<String, dynamic> gallery;

  const GalleryDetailPage({
    Key? key,
    required this.gallery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: const Color(0xFFAFD5E8).withOpacity(0.4),
        title: Text(
          gallery['name'] ?? 'Gallery Details',
          style: const TextStyle(
            color: Color(0xFF436380),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF436380)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gallery name and basic info
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gallery['name'] ?? 'Gallery Details',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  const SizedBox(height: 20),
                  
                  // Gallery description
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    gallery['description'] ?? 'No description available.',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6F8CA3),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            
            // Gallery image
            SizedBox(
              width: double.infinity,
              height: 240,
              child: gallery['image'] != null 
                ? Image.asset(
                    gallery['image'],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildPlaceholderImage();
                    },
                  )
                : _buildPlaceholderImage(),
            ),
            
            const SizedBox(height: 20),
            
            // Gallery highlights - Enlarged version
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gallery Highlights',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Display gallery highlights if available
                  if (gallery['highlights'] != null && gallery['highlights'] is List && (gallery['highlights'] as List).isNotEmpty)
                    ...List.generate(
                      (gallery['highlights'] as List).length,
                      (index) => _buildEnlargedHighlightItem(
                        (gallery['highlights'][index]['title'] as String?) ?? 'Untitled',
                        (gallery['highlights'][index]['artist'] as String?) ?? 'Unknown Artist',
                        (gallery['highlights'][index]['year'] as String?) ?? 'Unknown Year',
                        (gallery['highlights'][index]['thumbnailImage'] as String?) ?? '',
                      ),
                    )
                  else
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'No highlights available for this gallery',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF6F8CA3),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      color: const Color(0xFFAFD5E8).withOpacity(0.2),
      child: const Center(
        child: Icon(
          Icons.image_outlined,
          size: 80,
          color: Color(0xFF6F8CA3),
        ),
      ),
    );
  }

  Widget _buildEnlargedHighlightItem(String title, String artist, String year, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Artwork thumbnail - larger size
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: imagePath.isNotEmpty
                ? Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildLargeThumbnailPlaceholder();
                    },
                  )
                : _buildLargeThumbnailPlaceholder(),
            ),
          ),
          const SizedBox(height: 16),
          
          // Artwork information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF436380),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                artist,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6F8CA3),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                year,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F8CA3),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLargeThumbnailPlaceholder() {
    return Container(
      width: double.infinity,
      height: 200,
      color: const Color(0xFFAFD5E8).withOpacity(0.2),
      child: const Center(
        child: Icon(
          Icons.image_outlined,
          size: 50,
          color: Color(0xFF6F8CA3),
        ),
      ),
    );
  }
}