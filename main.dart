import 'package:flutter/material.dart';

void main() => runApp(PureBlogApp());

class BlogPost {
  final String title;
  final String content;
  final String imageUrl;
  final String datePublished;
  final String readingTime;
  final String bloggerName;
  final List<String> tags;

  BlogPost({
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.datePublished,
    required this.readingTime,
    required this.bloggerName,
    required this.tags,
  });
}

final List<BlogPost> initialBlogs = [
  BlogPost(
    title: "The History of Cursed Paintings",
    content: "Explore mysterious cursed artworks from haunted portraits to infamous murals, legends from spooky art history.",
    imageUrl: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80",
    datePublished: "10 Aug 2025",
    readingTime: "6 min",
    bloggerName: "Amara Grey",
    tags: ["History", "Art", "Cursed"],
  ),
  BlogPost(
    title: "Objects Lost in Space Forever",
    content: "Space missions have scattered objects across the final frontier. Discover the lost gear that won't return!",
    imageUrl: "https://images.unsplash.com/photo-1465101172946-4377e57745c3?auto=format&fit=crop&w=800&q=80",
    datePublished: "3 Aug 2025",
    readingTime: "7 min",
    bloggerName: "Jaxon Lee",
    tags: ["Space", "Exploration"],
  ),
  BlogPost(
    title: "The Science of Why We Procrastinate",
    content: "Why do we delay tasks? Dive into the neuroscience, psychology, and hacks behind our tendency to procrastinate.",
    imageUrl: "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&w=800&q=80",
    datePublished: "29 July 2025",
    readingTime: "5 min",
    bloggerName: "Kai Patel",
    tags: ["Science", "Productivity", "Mind"],
  ),
  BlogPost(
    title: "How Ancient Civilizations Predicted Modern Tech",
    content: "Did the ancients imagine future tech? From Greek steam engines to Mayan eclipse computers, history meets innovation.",
    imageUrl: "https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?auto=format&fit=crop&w=800&q=80",
    datePublished: "21 July 2025",
    readingTime: "8 min",
    bloggerName: "Tara Qamar",
    tags: ["History", "Tech"],
  ),
  BlogPost(
    title: "Dreams: The Original Metaverse",
    content: "Long before VR, humans explored inner worlds nightly. What can dreams teach us about the virtual future?",
    imageUrl: "https://images.unsplash.com/photo-1464983953574-0892a716854b?auto=format&fit=crop&w=800&q=80",
    datePublished: "16 July 2025",
    readingTime: "4 min",
    bloggerName: "Ravi Nayak",
    tags: ["Mind", "Tech"],
  ),
  BlogPost(
    title: "Oceanic Mysteries Deeper Than Atlantis",
    content: "Unsolved puzzles beneath the sea from shipwrecks to unexplained signals. Dive into the deep's greatest secrets.",
    imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80",
    datePublished: "1 July 2025",
    readingTime: "7 min",
    bloggerName: "Eve Trenton",
    tags: ["Ocean", "Mystery"],
  ),
  BlogPost(
    title: "The Mathematics of Coincidences",
    content: "Ever notice strange coincidences? See why math can explain even the weirdest chances.",
    imageUrl: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80",
    datePublished: "25 June 2025",
    readingTime: "6 min",
    bloggerName: "Simon Lee",
    tags: ["Math", "Curiosity", "Science"],
  ),
  BlogPost(
    title: "Plants With Microphones: Science or Spycraft?",
    content: "Some plants respond to sounds, but can they eavesdrop too? Explore the secret life of greenery.",
    imageUrl: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80",
    datePublished: "17 June 2025",
    readingTime: "6 min",
    bloggerName: "Julie Chen",
    tags: ["Nature", "Science", "Curiosity"],
  ),
  BlogPost(
    title: "Why Some Sounds Give Us Goosebumps",
    content: "From ASMR to eerie melodies, discover why human brains react viscerally to certain frequencies.",
    imageUrl: "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&w=800&q=80",
    datePublished: "2 June 2025",
    readingTime: "5 min",
    bloggerName: "Saanvi Bose",
    tags: ["Mind", "Science", "Music"],
  ),
  BlogPost(
    title: "Lost Cities Found By Accident",
    content: "From jungle ruins to underwater temples, see how chance discoveries rewrite maps.",
    imageUrl: "https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?auto=format&fit=crop&w=800&q=80",
    datePublished: "24 May 2025",
    readingTime: "6 min",
    bloggerName: "Zane Holt",
    tags: ["History", "Travel"],
  ),
];

class PureBlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pure Blog',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF191F36),
        fontFamily: 'Montserrat',
        cardColor: const Color(0xFF20283E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D2334),
        ),
        colorScheme: ColorScheme.dark(
          surface: Color(0xFF191F36), // Changed from background to surface
          primary: Color(0xFF6EC6FF),
          secondary: Color(0xFFFDCB5D),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF222A42),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(color: Color(0xFFBFC9DA)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: BlogNavTabs(),
    );
  }
}

class BlogNavTabs extends StatefulWidget {
  @override
  State<BlogNavTabs> createState() => _BlogNavTabsState();
}

class _BlogNavTabsState extends State<BlogNavTabs> {
  int _selectedTab = 0;
  List<BlogPost> blogs = List.from(initialBlogs);
  final TextEditingController searchController = TextEditingController();

  // For Write tab
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();

  final List<String> tabTitles = ["Home", "Search", "Write", "Profile"];
  final List<IconData> tabIcons = [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.edit_rounded,
    Icons.person_rounded,
  ];

  String searchQuery = "";

  final userName = "Sid the Blogger";
  final profilePic =
      "https://images.unsplash.com/photo-1633336125194-727a05b1e9bb?auto=format&fit=crop&w=800&q=80";

  @override
  void dispose() {
    searchController.dispose();
    titleController.dispose();
    contentController.dispose();
    imageUrlController.dispose();
    tagsController.dispose();
    super.dispose();
  }

  void addBlog() {
    final title = titleController.text.trim();
    final content = contentController.text.trim();
    final imageUrl = imageUrlController.text.trim().isNotEmpty
        ? imageUrlController.text.trim()
        : "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&w=800&q=80";
    final tagsRaw = tagsController.text.trim();
    final tags = tagsRaw.isNotEmpty ? tagsRaw.split(",").map((e) => e.trim()).where((t) => t.isNotEmpty).toList() : ["General"];
    if (title.isEmpty || content.isEmpty) return;
    final now = DateTime.now();
    final formattedDate = "${now.day} ${_monthName(now.month)} ${now.year}";
    setState(() {
      blogs.insert(
        0,
        BlogPost(
          title: title,
          content: content,
          imageUrl: imageUrl,
          datePublished: formattedDate,
          readingTime: "${(content.length ~/ 400 + 1)} min",
          bloggerName: userName,
          tags: tags,
        ),
      );
      titleController.clear();
      contentController.clear();
      imageUrlController.clear();
      tagsController.clear();
      _selectedTab = 0;
    });
  }

  List<BlogPost> get filteredBlogs {
    final query = searchQuery.toLowerCase();
    return blogs.where((blog) =>
        blog.title.toLowerCase().contains(query) ||
        blog.content.toLowerCase().contains(query) ||
        blog.bloggerName.toLowerCase().contains(query) ||
        blog.tags.any((tag) => tag.toLowerCase().contains(query))
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedTab == 1
          ? AppBar(
              title: Container(
                height: 52,
                alignment: Alignment.center,
                child: TextField(
                  controller: searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Search blogs...",
                    prefixIcon: Icon(Icons.search_rounded, color: Theme.of(context).colorScheme.primary),
                  ),
                  style: TextStyle(fontSize: 19, color: Colors.white),
                  onChanged: (val) {
                    setState(() {
                      searchQuery = val;
                    });
                  },
                ),
              ),
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              automaticallyImplyLeading: false,
              elevation: 2,
            )
          : AppBar(
              title: Text(tabTitles[_selectedTab],
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              elevation: 4,
            ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          _buildHomeFeed(blogs),
          _buildSearchPage(),
          _buildWriteTab(),
          _buildProfileTab(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF20283E),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 12, offset: Offset(0, -2)),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: NavigationBar(
              height: 65,
              indicatorColor: Theme.of(context).colorScheme.primary.withAlpha(43), // Fixed: .withOpacity(0.17) -> .withAlpha(43)
              backgroundColor: Color(0xFF20283E),
              selectedIndex: _selectedTab,
              onDestinationSelected: (i) {
                setState(() {
                  _selectedTab = i;
                  if (i != 1) {
                    searchQuery = "";
                    searchController.clear();
                  }
                });
              },
              destinations: [
                for (int i = 0; i < tabTitles.length; i++)
                  NavigationDestination(
                    icon: Icon(tabIcons[i], color: Colors.white70),
                    selectedIcon: Icon(tabIcons[i], color: Theme.of(context).colorScheme.primary),
                    label: tabTitles[i],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHomeFeed(List<BlogPost> blogsToShow) {
    return blogsToShow.isEmpty
        ? Center(
            child: Text(
              "No blogs found.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        : ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            itemCount: blogsToShow.length,
            itemBuilder: (context, idx) {
              final post = blogsToShow[idx];
              return _BlogCard(post: post);
            },
          );
  }

  Widget _buildSearchPage() {
    final foundBlogs = filteredBlogs;
    return searchQuery.isEmpty
        ? SizedBox.shrink()
        : foundBlogs.isEmpty
            ? Center(
                child: Text(
                  "No blogs found.",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 10),
                itemCount: foundBlogs.length,
                itemBuilder: (context, idx) {
                  final post = foundBlogs[idx];
                  return _BlogCard(post: post);
                },
              );
  }

  Widget _buildWriteTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Write a Blog", style: TextStyle(fontSize: 28, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
          SizedBox(height: 18),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: "Blog Title",
              prefixIcon: Icon(Icons.title_rounded, color: Theme.of(context).colorScheme.primary),
            ),
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(height: 15),
          TextField(
            controller: contentController,
            decoration: InputDecoration(
              hintText: "What's your story?",
              prefixIcon: Icon(Icons.article_rounded, color: Theme.of(context).colorScheme.primary),
            ),
            maxLines: 6,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 15),
          TextField(
            controller: imageUrlController,
            decoration: InputDecoration(
              hintText: "Image URL (optional)",
              prefixIcon: Icon(Icons.image_rounded, color: Theme.of(context).colorScheme.primary),
            ),
            style: TextStyle(color: Colors.white70, fontSize: 15),
          ),
          SizedBox(height: 15),
          TextField(
            controller: tagsController,
            decoration: InputDecoration(
              hintText: "Tags (comma separated)",
              prefixIcon: Icon(Icons.sell_rounded, color: Theme.of(context).colorScheme.primary),
            ),
            style: TextStyle(color: Colors.white70, fontSize: 15),
          ),
          SizedBox(height: 22),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 13),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
              ),
              icon: Icon(Icons.send_rounded, color: Colors.white),
              label: Text("Post", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              onPressed: addBlog,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(profilePic),
          ),
          SizedBox(height: 18),
          Text(userName, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
          SizedBox(height: 16),
          Text("Blogger, Dreamer, Creator", style: TextStyle(color: Colors.white70, fontSize: 16)),
          SizedBox(height: 32),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF20283E),
              elevation: 1,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 11),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            ),
            icon: Icon(Icons.edit_rounded, color: Theme.of(context).colorScheme.primary),
            label: Text("Edit Profile", style: TextStyle(color: Theme.of(context).colorScheme.primary)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  String _monthName(int m) {
    const names = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return names[m - 1];
  }
}

class _BlogCard extends StatelessWidget {
  final BlogPost post;
  const _BlogCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 23),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12, offset: Offset(0, 6))],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            child: Image.network(
              post.imageUrl,
              width: 120,
              height: 160,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 120,
                height: 160,
                color: Theme.of(context).colorScheme.primary.withAlpha(41), // Fixed: .withOpacity(0.16) -> .withAlpha(41)
                child: Icon(Icons.broken_image, color: Theme.of(context).colorScheme.primary, size: 38),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18, 12, 15, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(post.datePublished, style: TextStyle(color: Color(0xFFBFC9DA))),
                      SizedBox(width: 10),
                      Text("• ${post.readingTime}", style: TextStyle(color: Color(0xFFBFC9DA))),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3.5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text(
                          post.bloggerName,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(post.title, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
                  SizedBox(height: 8),
                  Text(
                    post.content,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      ...post.tags.map<Widget>((tag) => Container(
                            margin: EdgeInsets.only(right: 7),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(tag, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
                          )),
                      Spacer(),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.comment, color: Theme.of(context).colorScheme.primary, size: 18),
                        label: Text("Comment", style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(43), // Fixed: .withOpacity(0.17) -> .withAlpha(43)
                          elevation: 0,
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
