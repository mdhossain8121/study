import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/exam/exam_bloc.dart';
import 'package:study/bloc/login/login_bloc.dart';
import 'package:study/firebase_options.dart';
import 'package:study/provider/user_provider.dart';
import 'package:study/repo/local/shared_preferences.dart';
import 'package:study/ui/aidplus/blood_bank/blood_bank_profile.dart';
import 'package:study/ui/billing/login/login_ui.dart';
import 'package:study/ui/counter_ui.dart';
import 'package:study/ui/news_app/news_homepage.dart';
import 'package:study/ui/study/screens/home/home_ui.dart';
import 'package:study/ui/study/screens/login/login_ui.dart';
import 'package:study/ui/theme/color_schemes.dart';
import 'package:provider/provider.dart';
import 'model/user_model/user_model.dart';

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform
//   );
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (_)=>UserProvider())
//     ],
//     child: const StudyApp(),
//   ));
// }

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  await SharedPreferencesUtil.init();
  runApp(const StudyApp());
}

class StudyApp extends StatelessWidget{
  const StudyApp({super.key});

  /*
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  */



  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
              create: (BuildContext context)=>LoginBloc()
          ),
          BlocProvider<ExamBloc>(
              create: (BuildContext context) => ExamBloc()
          )
        ],
        child: MaterialApp(
          theme: ThemeData(
              useMaterial3: true,
              colorScheme:lightColorScheme
          ),
          darkTheme: ThemeData(
              useMaterial3: true,
              colorScheme: darkColorScheme
          ),
          debugShowCheckedModeBanner: false,
          title: "Flutter Practice",
          // home: CounterApp(),
          // home: NewsHomepage(),
          // home: BloodBankProfile(),
          home: LoginUI(),
          // home: HomeUI(),
          // home: ApiTest(),
        )
    );
  }
}

class ApiTest extends StatefulWidget{
  const ApiTest({super.key});

  @override
  State createState() => ApiTestState();
}

class ApiTestState extends State<ApiTest>{

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getUsers();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Api Test"),
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: userProvider.isLoading==true
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(itemBuilder: (context, index) {
                UserModel userModel = userProvider.allUserList[index];
                return ListTile(
                  leading: Text("${userModel.id}"),
                  title: Text("${userModel.name}"),
                  subtitle: Text("${userModel.email}"),
                );
              }, itemCount: userProvider.allUserList.length)
      ),
    );
  }
}

