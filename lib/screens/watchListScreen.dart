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
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Placeholder color
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/your_image.png', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Movie Title', // Replace with actual movie title
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '8.5', // Replace with actual rating number
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.confirmation_number,
                              color: Colors.blue,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Action', // Replace with your action text
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.green,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '2021', // Replace with the year
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.orange,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '139 minutes', // Replace with the duration
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Space between movie entries
                // Second Movie Entry (Duplicate of the first one)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Placeholder color
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/samsik', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Second Movie', // Replace with actual movie title
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '7.9', // Replace with actual rating number
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.confirmation_number,
                              color: Colors.blue,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Adventure', // Replace with your action text
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.green,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '2020', // Replace with the year
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.orange,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '122 minutes', // Replace with the duration
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
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
