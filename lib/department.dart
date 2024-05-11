import 'package:flutter/material.dart';
import 'web.dart';

class Department extends StatefulWidget {
  final String dep;

  Department({required this.dep});

  @override
  _DepartmentState createState() => _DepartmentState(dep: dep);
}

class _DepartmentState extends State<Department> {
  final String dep;

  _DepartmentState({required this.dep});

  @override
  Widget build(BuildContext context) {
    String syl = '';
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    if (dep == 'islamh') {
      syl == 'https://gccc.edu.bd/ihcdocument_categories/syllabus/';
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector1(
                      dep: dep,
                      context: context,
                      title: 'শিক্ষক তালিকা',
                      imagePath: 'assets/male.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'teacher',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector1(
                      dep: dep,
                      context: context,
                      title: 'সিলেবাস',
                      imagePath: 'assets/journals.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'syllebus',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildGestureDetector1(
                      dep: dep,
                      context: context,
                      title: 'ক্লাস রুটিন',
                      imagePath: 'assets/calendar_outline.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'routine',
                    ),
                    SizedBox(
                      width: screenWidth * .04,
                    ),
                    buildGestureDetector1(
                      dep: dep,
                      context: context,
                      title: 'নোটিশ',
                      imagePath: 'assets/file.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      receivedValue: 'notice',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector buildGestureDetector1({
  required BuildContext context, // Pass BuildContext as a parameter
  required String title,
  required String imagePath,
  required double screenWidth,
  required double screenHeight,
  required String receivedValue,
  required String dep,
}) {
  return GestureDetector(
    onTap: () {
      if (receivedValue == 'teacher') {
        // here we will use nested if
        if (dep == 'bangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/bangla/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'english') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/english/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'islamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/islamic-history-and-culture/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'islams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/islamic-studies/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'philo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/philosophy/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'economics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/economics/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'politics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science/political-science/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'management') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-business/managemant/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'accounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-business/accounting/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'psyco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/psychology/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'zoo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/zoology/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'bot') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/botany/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'math') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/mathematics/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'chemistry') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/chemistry/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'physics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-science/physics/our-teachers/',
              ),
            ),
          );
        } else if (dep == 'emanagement') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-business-eve/management-eve/our-teacher-eve/',
              ),
            ),
          );
        } else if (dep == 'eaccounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-business-eve/accounting-eve/our-teacher/',
              ),
            ),
          );
        } else if (dep == 'epolitics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/political-science-eve/our-teacher/',
              ),
            ),
          );
        } else if (dep == 'eeconomics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/economics-eve/our-teacher/',
              ),
            ),
          );
        } else if (dep == 'ephilo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/philosophy-eve/our-teacher/',
              ),
            ),
          );
        } else if (dep == 'eislams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/islamic-studies-eve/our-teacher-is-eve/',
              ),
            ),
          );
        } else if (dep == 'eislamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/islamic-history-and-culture-eve/our-teacher-eve/',
              ),
            ),
          );
        } else if (dep == 'eenglish') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/english-eve/our-teacher/',
              ),
            ),
          );
        } else if (dep == 'ebangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/department/faculty-of-arts-and-social-science-eve/bangla-eve/our-teacher/',
              ),
            ),
          );
        }
      } else if (receivedValue == 'notice') {
        if (dep == 'emanagement') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mannoticeeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eaccounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accnoticeeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'epolitics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eeconomics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ecoblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'ephilo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philoblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eislams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eislamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eenglish') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engblogeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'ebangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bnnoticeeve_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'bangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bnnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'english') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'islamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'islams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'philo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philonotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'eco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/econotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'politics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'physics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/phynotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'management') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mannotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'accounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'psyco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psynotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'zoo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/zoonotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'bot') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/botnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'math') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mathnotice_categories/notice/',
              ),
            ),
          );
        } else if (dep == 'chemistry') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/chenotice_categories/notice/',
              ),
            ),
          );
        }
      } else if (receivedValue == 'syllebus') {
        if (dep == 'emanagement') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mandocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eaccounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accdocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'epolitics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psdocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eeconomics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ecodocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'ephilo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philodocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eislams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isdocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eislamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcdocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eenglish') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engdocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'ebangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bndocumenteve_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'bangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bndocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'english') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'islamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'islams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'philo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philodocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'eco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ecodocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'politics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'physics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/phydocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'management') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mandocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'accounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'psyco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psydocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'zoo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/zoodocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'bot') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/botdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'math') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mathdocument_categories/syllabus/',
              ),
            ),
          );
        } else if (dep == 'chemistry') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/chedocument_categories/syllabus/',
              ),
            ),
          );
        }
      }
      if (receivedValue == 'routine') {
        if (dep == 'emanagement') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mandocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eaccounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accdocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'epolitics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psdocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eeconomics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ecodocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'ephilo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philodocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eislams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isdocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eislamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcdocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eenglish') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engdocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'ebangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bndocumenteve_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'bangla') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/bndocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'english') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/engdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'islamh') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ihcdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'islams') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/isdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'philo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/philodocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'eco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/ecodocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'politics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'physics') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/phydocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'management') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mandocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'accounting') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/accdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'psyco') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/psydocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'zoo') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/zoodocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'bot') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/botdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'math') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/mathdocument_categories/class-routine/',
              ),
            ),
          );
        } else if (dep == 'chemistry') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebScreen(
                receivedValue:
                    'https://gccc.edu.bd/chedocument_categories/class-routine/',
              ),
            ),
          );
        }
      }
    },
    child: Container(
      height: screenHeight * 0.20,
      width: screenWidth * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: Text(
              title,
              style: TextStyle(),
            ),
          ),
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.fill,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      alignment: Alignment.center,
    ),
  );
}
