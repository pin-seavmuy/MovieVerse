import 'package:flutter/material.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0), // 10px padding around the content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "WatchList",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                      fontSize: 24, // Adjusted to fit within the box
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // First Movie Entry
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300], // Placeholder color
                          borderRadius: BorderRadius.circular(5), // Adjusted border radius to 5px
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/spider.jpg', // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for movie title
                              child: Text(
                                'Spider-Man: No Way Home', // Replace with actual movie title
                                style: TextStyle(
                                  fontSize: 18, // Changed font size to 20px
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for rating row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.red, // Changed icon color to red
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '8.5', // Replace with actual rating number
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 20px
                                      color: Colors.red, // Change the third line of text to red
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for genre row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Action', // Replace with your action text
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 20px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for year row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '2021', // Replace with the year
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 20px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for duration row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '139 minutes', // Replace with the duration
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 20px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Space between movie entries
                // Second Movie Entry
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300], // Placeholder color
                          borderRadius: BorderRadius.circular(5), // Adjusted border radius to 5px
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/demon.jpg', // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for movie title
                              child: Text(
                                'My Demon', // Replace with actual movie title
                                style: TextStyle(
                                  fontSize: 18, // Changed font size to 18px
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for rating row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.red, // Changed icon color to red
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '8.5', // Replace with actual rating number
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 18px
                                      color: Colors.red, // Change the third line of text to red
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for genre row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Romance', // Replace with your action text
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 18px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for year row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '2023', // Replace with the year
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 18px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0), // Margin and padding of 5px for duration row
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '16 episodes', // Replace with the duration
                                    style: TextStyle(
                                      fontSize: 18, // Changed font size to 18px
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Placeholder for future content or widgets
              ],
            ),
          ),
        ),
      ),
    );
  }
}
