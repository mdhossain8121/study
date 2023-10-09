import 'package:flutter/material.dart';
import 'package:study/ui/study/screens/exam/exam_list_ui.dart';
import 'package:study/ui/study/screens/home/components/home_card.dart';
import 'package:study/ui/study/screens/package/package_list_ui.dart';

class HomeUI extends StatefulWidget{
  const HomeUI({super.key});


  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeUI>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //'assets/images/academic.svg'
    //"Academic Education"
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            InkWell(
              child: SizedBox(
                height: 70.0,
                child: Card(
                  margin: EdgeInsets.all(5.0),
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(image: AssetImage('assets/images/packages.png')),
                        ),
                        Expanded(
                          child: Text(
                            "Premium Packages",
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PackageListUi();
                }));
              },
            ),
            Row(
              children: [
                HomeCard(text: "Academic Education", imageSrc: 'assets/images/academic.svg'),
                HomeCard(text: "Admission", imageSrc: 'assets/images/university_admission.svg'),
              ],
            ),
            Row(
              children: [
                HomeCard(text: "Job Preparation", imageSrc: 'assets/images/job_preparation.svg'),
                InkWell(
                  child: HomeCard(text: "Exam", imageSrc: 'assets/images/exam.svg'),
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ExamListUi();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}