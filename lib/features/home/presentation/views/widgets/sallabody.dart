import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ibrary/features/home/presentation/manger/salla/cubit/salla_cubit.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/sallaListView.dart';

class sallabody extends StatelessWidget {
  const sallabody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<SallaCubit>(context);
    return BlocBuilder<SallaCubit,SallaState>(
      builder: (context, state) {
        if(cubit.sallaList.length==0)
        {
          return Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Lottie.asset('assets/animation/data.json'),
              Spacer(),
              const  Text('There are no books here',style: TextStyle(
                color: Color.fromARGB(255, 168, 15, 137),
                fontSize: 30
              ),),
              const SizedBox(
                height: 100,
              )
            ],
          );
        }else{
          return  sallaListView(book: cubit.sallaList);
        }
      },
    );
  }
}