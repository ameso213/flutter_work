import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
           children: [
          Padding(
           padding: const EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0), 
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH6dow_QgTfElDMYeANJaIQM7CvRiftBRopg&s',
              width: 150, 
              height: 150,
            ),
          ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildVideoCategorySection(),
          _buildVideoSection(),
          _buildShortsSection(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildVideoCategorySection() {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryChip('All'),
          _buildCategoryChip('Music'),
          _buildCategoryChip('Gaming'),
          _buildCategoryChip('News'),
          _buildCategoryChip('Movies'),
          _buildCategoryChip('Sports'),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.black,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildVideoSection() {
    final List<Map<String, String>> videoData = [
      {
        'channelName': 'Kitchen Therapist- How to prepare yam soup in 10 minutes',
        'views': '1-3M views',
        'uploadTime': '2 days ago',
        'thumbnailUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWMePBTCJmpMklgivt1gKG21f7mVTWRPI6JA&s',
      },
      {
        'channelName': 'Mix - Hip Hop Music',
        'views': '500K views',
        'uploadTime': '3 days ago',
        'thumbnailUrl': 'https://i1.sndcdn.com/artworks-000663029293-f0cqsr-t500x500.jpg',
      },
      {
        'channelName': 'Wigs Installation - different ways you can install a lace',
        'views': '750K views',
        'uploadTime': '1 week ago',
        'thumbnailUrl':'https://i5.walmartimages.com/asr/afef896a-bb36-4b02-8539-b6e8af7725e1.a993b01b87f73c65772c45cd1625c43c.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF'
      },
      {
        'channelName': 'Anxiety & Depression - Weight Loss - Sleep Well',
        'views': '2M views',
        'uploadTime': '1 day ago',
        'thumbnailUrl':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn7gHPxpElBEOwJ8VfqPyTxyVyMFI9H4U-ng&s',
      },
      {
        'channelName': 'Sports - Who is Lamine Yamal',
        'views': '200K views',
        'uploadTime': '5 days ago',
        'thumbnailUrl': 'https://cdn-acn.watchity.net/acn/images/570070a1-0dc5-4092-ba58-046773724b08/4eeadaaf-717d-412a-8a23-c74abb19c011/4eeadaaf-717d-412a-8a23-c74abb19c011_medium.jpeg',
      },
    ];

    return Column(
      children: videoData.map((video) {
        return _buildVideoCard(
          video['channelName']!,
          video['views']!,
          video['uploadTime']!,
          video['thumbnailUrl']!,
        );
      }).toList(),
    );
  }

  Widget _buildVideoCard(
    String channelName,
    String views,
    String uploadTime,
    String thumbnailUrl,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              thumbnailUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '$channelName • $views • $uploadTime',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShortsSection() {
    final List<String> shortsData = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3cDCGEIjNT3hw7uBJeo7bduQL8PlCf-Lwu44olo2wMnC6B4_fwglLYM7PCgH4_aDQrE&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjZjpFqrlUV_Fhgo-pHR_2M1PQ5MQiEUqdaA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGGt6CVlSlI7ZOGUupHPHCf-4Cz8kD62Nlpw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpNSm11xJYs4R_zNMTO8UWBtTdPVmsqea2rg&s',
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
                Icon(Icons.videocam, color: Colors.red), 
              SizedBox(width: 8),
              Text(
                'Shorts',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 9,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: shortsData.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  shortsData[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'Upload',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'You',
        ),
      ],
    );
  }
}