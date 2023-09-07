import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_ibrary/constant.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';import 'package:my_ibrary/features/home/presentation/manger/featurebook/cubit/fetchfeaturebook_cubit.dart';
import 'package:my_ibrary/features/home/presentation/manger/newsetbook/fetchnewsetbook_cubit.dart';
import 'package:my_ibrary/features/home/presentation/manger/salla/cubit/salla_cubit.dart';
import 'package:my_ibrary/features/search/presentation/manager/cubits/search/search_cubit.dart';
import 'package:my_ibrary/features/splash/presentation/views/splashview.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>('kFeaturedBox');
  await Hive.openBox<BookEntity>('kNewestBox');
  var h= await Hive.box<BookEntity>('kFeaturedBox');
  print(h.values);
  print('abdsiuhl');
  runApp(const lbrary());
}

class lbrary extends StatelessWidget {
  const lbrary({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=> FetchfeaturebookCubit()..fetchfeaturebook()),
        BlocProvider(create: (context)=>FetchnewsetbookCubit()..fetchbestebook()),
        BlocProvider(create: (context)=>SearchCubit()),
        BlocProvider(create: (context)=>SallaCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(iconTheme: const IconThemeData(color: Colors.white))
            .copyWith(
          scaffoldBackgroundColor: primarycolor,
        ),
        home:const splashview(),
      ),
    );
  }
}
