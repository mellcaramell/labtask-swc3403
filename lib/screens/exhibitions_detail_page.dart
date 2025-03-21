import 'package:flutter/material.dart';

class ExhibitionDetailPage extends StatefulWidget {
  final Map<String, dynamic> exhibition;

  const ExhibitionDetailPage({
    Key? key,
    required this.exhibition,
  }) : super(key: key);

  @override
  State<ExhibitionDetailPage> createState() => _ExhibitionDetailPageState();
}

class _ExhibitionDetailPageState extends State<ExhibitionDetailPage> {
  bool _isBooked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: const Color(0xFFAFD5E8).withOpacity(0.4),
        title: Text(
          widget.exhibition['title'],
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
            // Exhibition hero image
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image.asset(
                widget.exhibition['image'],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
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
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Exhibition title and date
                  Text(
                    widget.exhibition['title'],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                        size: 16,
                        color: Color(0xFFD4AF37),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.exhibition['date'],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6F8CA3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Exhibition description
                  const Text(
                    'About the Exhibition',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.exhibition['description'],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6F8CA3),
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Exhibition details - would be expanded in a real app
                  const Text(
                    'Exhibition Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF436380),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Extended details about the exhibition
                  _buildDetailItem(
                    Icons.access_time_outlined,
                    'Opening Hours',
                    widget.exhibition['openingHours'] ??
                        '9:00 AM - 6:00 PM', // Use fallback value if not available
                  ),
                  const SizedBox(height: 12),
                  _buildDetailItem(
                    Icons.location_on_outlined,
                    'Location',
                    widget.exhibition['location'] ?? 'Main Exhibition Hall',
                  ),
                  const SizedBox(height: 12),
                  _buildDetailItem(
                    Icons.confirmation_number_outlined,
                    'Ticket Fee',
                    widget.exhibition['ticketFee'] ??
                        '\$15 Regular / \$10 Students',
                  ),

                  const SizedBox(height: 24),

                  // Event button that changes to green when booked
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isBooked
                          ? null
                          : () {
                              setState(() {
                                _isBooked = true;
                              });
                              // Show a booking confirmation message
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Booking complete! Your guided tour has been confirmed.'),
                                  backgroundColor: Color(0xFF436380),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isBooked
                            ? const Color(0xFF4CAF50)
                            : const Color(0xFFD4AF37),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBackgroundColor:
                            const Color(0xFF4CAF50), // Keep green when disabled
                        disabledForegroundColor:
                            Colors.white, // Keep text white when disabled
                      ),
                      child: Text(
                        _isBooked ? 'Booking Completed' : 'Book Guided Tour',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: const Color(0xFFD4AF37),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6F8CA3),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF436380),
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
