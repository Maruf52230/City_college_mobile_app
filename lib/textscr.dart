// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class principle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child:
                        Center(child: Image.asset('assets/principalgccc.jpg')),
                    height: screenHeight * 0.19,
                    width: screenHeight * 0.3,
                  ),
                  SizedBox(
                    height: screenHeight * 0.019,
                  ),
                  Text('PROFESSOR DR. SUDEEPA DUTTA',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '''
Dear Students,
As we embark on a new academic year, I find myself privileged to be part of a community that thrives on excellence, innovation, and personal growth. Our college is more than just a place of education; it is a vibrant hub of ideas, aspirations, and opportunities. Each student here is a unique individual with untapped potential, and it is my earnest belief that, during your time here, you will discover the power within yourselves to create a future that surpasses your wildest dreams. As you navigate the exciting journey ahead, I offer a few words of advice. Embrace every opportunity for learning, both inside and outside the classroom. Your college experience extends beyond textbooks and exams—it is a holistic journey of self-discovery and personal development.
Remember to manage your time wisely; it is a precious resource that, when used effectively, can lead to both academic success and a fulfilling personal life. Seek knowledge not just within the confines of your courses but from the vast array of resources available to you.
building a support system is paramount. Your fellow students, faculty, and mentors are here to guide you through challenges and celebrate your victories. Do not hesitate to reach out when needed.
                                    
Lastly, view failures not as setbacks, but as stepping stones towards growth. Every challenge you face is an opportunity to learn and emerge stronger.
                                    
 I am confident that your time at Government City College will be transformative, and I eagerly anticipate witnessing your achievements and contributions to our vibrant academic community.
                                    
Here's to a year of inspiration, collaboration, and unparalleled success!
                                    
Warm regards,
                                    
                                    
Principal
Government City College''',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class aprinciple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: Image.asset('assets/viceprincipalgccc.jpg')),
                      height: screenHeight * 0.19,
                      width: screenHeight * 0.3,
                    ),
                    SizedBox(
                      height: screenHeight * 0.019,
                    ),
                    Text('PROFESSOR ABU MD. MEHDI HASSAN',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '''
Dear Students,
As we embark on a new academic year, I find myself privileged to be part of a community that thrives on excellence, innovation, and personal growth. Our college is more than just a place of education; it is a vibrant hub of ideas, aspirations, and opportunities. Each student here is a unique individual with untapped potential, and it is my earnest belief that, during your time here, you will discover the power within yourselves to create a future that surpasses your wildest dreams. As you navigate the exciting journey ahead, I offer a few words of advice. Embrace every opportunity for learning, both inside and outside the classroom. Your college experience extends beyond textbooks and exams—it is a holistic journey of self-discovery and personal development.
Remember to manage your time wisely; it is a precious resource that, when used effectively, can lead to both academic success and a fulfilling personal life. Seek knowledge not just within the confines of your courses but from the vast array of resources available to you.
building a support system is paramount. Your fellow students, faculty, and mentors are here to guide you through challenges and celebrate your victories. Do not hesitate to reach out when needed.
                                      
Lastly, view failures not as setbacks, but as stepping stones towards growth. Every challenge you face is an opportunity to learn and emerge stronger.
                                      
I am confident that your time at Government City College will be transformative, and I eagerly anticipate witnessing your achievements and contributions to our vibrant academic community.
                                      
Here's to a year of inspiration, collaboration, and unparalleled success!
                                      
Warm regards,
                                      
                                      
Principal
Government City College''',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class clginfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String videoUrl =
        'https://www.youtube.com/watch?v=56cLWwDYvSY&ab_channel=govtcitycollegectg';
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId:
                        YoutubePlayer.convertUrlToId(videoUrl) ?? '',
                    flags: YoutubePlayerFlags(
                      autoPlay: true,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  onReady: () {
                    // Perform actions when the player is ready.
                  },
                  onEnded: (data) {
                    // Perform actions when the video ends.
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.019,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      '১৯৫৪ সালে তৎকালীন এম.এল.এ অধ্যাপক আসহাব উদ্দীন, শিক্ষানুরাগী জনাব বাদশা মিঞা চৌধুরী ও জনাব আলী মুহাম্মদ মাস্টার প্রমুখের উদ্যোগে বেসরকারী চেষ্টায় প্রতিষ্ঠিত হয় ‘চট্টগ্রাম নাইট কলেজ’। কলেজের প্রথম অধ্যক্ষ শ্রী যোগেশ চন্দ্র সিনহা এম.এ(ইংরেজি)-র হাত ধরে সিটি কলেজের পথচলা শুরু হয়। ১৯৬২ সালে দিবা শাখা খোলার মাধ্যমে ‘সিটি কলেজ, চট্টগ্রাম’ নামে নিজস্ব জায়গায়, নিজস্ব ভবনে আইস ফ্যাক্টরী রোডের পাশে (নিউ মার্কেটের দক্ষিণে) বর্তমান স্থানে কার্যক্রম শুরু হয়। ১৯৭৯ সালে জাতীয়করণের মাধ্যমে ‘সিটি কলেজ’ সরকারি সিটি কলেজ, চট্টগ্রাম হিসাবে প্রতিষ্ঠা লাভ করে। বহু পথপরিক্রমায় আজ এ কলেজ দেশের অন্যতম বৃহৎ এবং একমাত্র দুই শীফটের কলেজ হিসেবে আত্মপ্রকাশ করেছে। এইচএসসি, ডিগ্রি(পাস), ১৫টি বিষয়ে অনার্স এবং ১৫টি বিষয়ে মাস্টার্সসহ সকল কোর্সে প্রায় ২৪০০০ শিক্ষার্থী এবং প্রায় ১২২ জন শিক্ষকের পদচারণায় মুখরিত এই কলেজ দেশে অন্যতম আদর্শ বিদ্যাপীঠ। এ কলেজকে সচল রাখার কাজে প্রায় ১০০ জন কর্মচারী সদা নিয়োজিত আছেন। বর্তমানে কলেজের মূল ক্যাম্পাসে বেসরকারী আমলের দুইটি ভবন রয়েছে। ( একাডেমিক ভবন–২, ৪তলা, এবং একাডেমিক ভবন–৬, ৪তলা) সরকারীকরণের পর ২০০০ সালে একটি ৫তলা (একাডেমিক ভবন–৩) নির্মিত হয়।  ২০২০ সালে দুটি ৫তলা একাডেমিক ভবন নির্মিত হয়, যা একাডেমিক ভবন–৪ ও একাডেমিক ভবন–৫ নামে পরিচিত এবং ২০২৩ সালে একটি ১০তলা ভবন (প্রশাসনিক কাম একাডেমিক ভবন–০১) নির্মিত হয়। এ কলেজ ক্যাম্পাসে রয়েছে আধুনিক স্থাপত্যকলায় নির্মিত ০১ টি ত্রিতল জামে মসজিদ। এছাড়া কলেজ ক্যাম্পাস থেকে প্রায় ৪০০ মিটার দুরে দারোগা হাট রোডে রয়েছে ৪ তলা মা আমিনা (রাঃ) ছাত্রীনিবাস ও আরেকটি ৫ তলা ছাত্রীনিবাস। কাজী নজরুল ইসলাম সড়কে রয়েছে স্টাফ কোয়াটার। দিবা ও বৈকালিক শীফটে একাডেমিক কার্যকমের সাথে সহপাঠ্যক্রম হিসাবে রোভার স্কাউট,  বি.এন.সি.সি., রেঞ্জার গাইড ও যুব রেডক্রিসেন্ট  –এর কার্যক্রম চালু আছে। বাংলাদেশ উম্মুক্ত বিশ্ববিদ্যালয়ের স্টাডি সেন্টার হিসাবে এ কলেজে উক্ত বিশ্ববিদ্যালয়ের চলমান কোর্সসমূহ পরিচালিত হয়ে আসছে। এছাড়া এ কলেজে সাহিত্য, সংস্কৃতি ও ক্রীড়া প্রতিযোগিতাসহ নানামুখী সহশিক্ষা কার্যক্রম পরিচালিত হয়। পাশাপাশি ছাত্র–শিক্ষক সমন্বয়ে সেমিনার, কর্মশালা ইত্যাদির আয়োজন করে থাকে। শিক্ষা মন্ত্রণালয়ের নির্দেশনায় ছাত্র–শিক্ষক–কর্মচারী সমন্বয়ে বিপুল উৎসাহ উদ্দীপনায় জাতীয় দিবসসমূহ পালিত হয়। ১৯৭১সালের মুক্তিযুদ্ধে এ কলেজের অবদান অবিস্মরণীয়। কলেজের অগণিত ছাত্র শিক্ষক কর্মচারী জীবন বাজি রেখে স্বাধীনতার মহান মুক্তিযুদ্ধে নিজেদের যুক্ত করেছিল। দেশ মাতৃকার স্বাধীনতার লাল সূর্য ছিনিয়ে আনতে গিয়ে তৎকালীন চট্টগ্রাম ইঞ্জিনিয়ারিং কলেজ (বর্তমান চুয়েট)-এর অদুরে পাক হানাদারদের সাথে সম্মুখ সমরে নিজের জীবন উৎসর্গ করেন সিটি কলেজের তৎকালীন ছাত্র ও ছাত্র সংসদের জিএসি এ.জি.এস সাইফুদ্দিন খালেদ। স্বৈরাচার ও সাম্প্রদায়িকতা বিরোধী আন্দোলনে সরকারি সিটি কলেজের ছাত্র সমাজের অবদান অপরিসীম। শিক্ষা ও মুক্তবুদ্ধির চর্চার কেন্দ্র হিসেবে বর্তমান এই কলেজে ছাত্র শিক্ষক কর্মচারী সমন্বয়ে চমৎকার সুন্দর পরিবেশ বিরাজ করছে।',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class Prii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width: 200, // Set a specific width or use constraints
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('কলেজ তথ্য'),
                      leading: Container(
                        child: Image.asset('assets/clg.png'),
                        height: 25,
                        width: 25,
                      ),
                      onTap: () {
                        // Handle the item tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => clginfo(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Container(
                      child: ListTile(
                        title: Text('অধ্যক্ষ'),
                        leading: Container(
                          child: Image.asset('assets/male.png'),
                          height: 25,
                          width: 25,
                        ),
                        onTap: () {
                          // Handle the item tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => principle(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('উপাধ্যক্ষ'),
                      leading: Container(
                        child: Image.asset('assets/male.png'),
                        height: 25,
                        width: 25,
                      ),
                      onTap: () {
                        // Handle the item tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => aprinciple(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
