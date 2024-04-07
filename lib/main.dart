import 'package:flutter/material.dart';
import 'package:mobile/Database.dart';
import 'package:mobile/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mobile/models/models.dart';
import './GetFromDB.dart';
import 'package:mobile/assets.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
//   DatabaseReference ref = FirebaseDatabase.instance.ref("/content");
//     await ref.set({
//       'name': 'Nguyen Hoai Ngans funny life',
//       'imageUrl': 'https://media.licdn.com/dms/image/D5603AQE_oWgoMdOVMw/profile-displayphoto-shrink_800_800/0/1679132182269?e=2147483647&v=beta&t=itFIlXFaRGxYTPeMJuRyaN8hN7Z-sE0srvUnl3Ay95s',
//       'titleImageUrl': 'no cap',
//       'videoUrl': 'https://www.youtube.com/watch?v=Nuy-vXGHGkA',
//       'description': 'no thing',
//       'ageLimit': '18',
//       'director': 'ma mum',
//       'releaseYear': '2024'
//         });
 final List<Content> previews = const [
                                  Content(
                                    name: 'Avatar The Last Airbender',
                                    imageUrl: Assets.atla,
                                    // color: Colors.orange,
                                    titleImageUrl: Assets.atlaTitle,
                                    videoUrl: '',
                                    description: '',
                                    ageLimit: '',
                                    director: '',
                                    releaseYear: '',
                                  ),
                                  Content(
                                                                      name: 'Avatar The Last Airbender',
                                                                      imageUrl: Assets.atla,
                                                                      // color: Colors.orange,
                                                                      titleImageUrl: Assets.atlaTitle,
                                                                      videoUrl: '',
                                                                      description: '',
                                                                      ageLimit: '',
                                                                      director: '',
                                                                      releaseYear: '',
                                                                    ),
                                                                    Content(
                                                                    name: 'Avatar The Last Airbender',
                                                                    imageUrl: Assets.atla,
                                                                    // color: Colors.orange,
                                                                    titleImageUrl: Assets.atlaTitle,
                                                                    videoUrl: '',
                                                                    description: '',
                                                                    ageLimit: '',
                                                                    director: '',
                                                                    releaseYear: '',
                                                                  ),
                                  Content(
                                    name: 'The Crown',
                                    imageUrl: Assets.crown,
                                    // color: Colors.red,
                                    titleImageUrl: Assets.crownTitle,
                                    videoUrl: '',
                                    description: '',
                                    ageLimit: '',
                                    director: '',
                                    releaseYear: '',
                                  )];
  final FirebaseDatabaseService databaseService = FirebaseDatabaseService();
  // runApp(const MyApp());
    await databaseService.addContent(previews);
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Database())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Netflix Sans',
      ),
      // home: Splash(),
      // home: const VideoApp(
      //   movieUrl:
      //       'https://firebasestorage.googleapis.com/v0/b/netflix-8b506.appspot.com/o/videos%2Fbee.mp4?alt=media&token=5514f33d-f3ad-410b-86e1-ade8d490c0e6',
      // ),
      // home: MainPage(),
      home: const LoginScreen(),
    );
  }
}
