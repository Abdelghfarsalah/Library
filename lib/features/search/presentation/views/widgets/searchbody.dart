import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ibrary/core/utils/assetdata.dart';
import 'package:my_ibrary/features/home/presentation/manger/newsetbook/fetchnewsetbook_cubit.dart';
import 'package:my_ibrary/features/search/presentation/manager/cubits/search/search_cubit.dart';
import 'package:my_ibrary/features/search/presentation/views/widgets/customtextfiled.dart';
import 'package:my_ibrary/features/search/presentation/views/widgets/searchlist.dart';

class searchbody extends StatefulWidget {
  const searchbody({super.key});

  @override
  State<searchbody> createState() => _searchbodyState();
}

class _searchbodyState extends State<searchbody> {
  late String? searchword;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
        SliverToBoxAdapter(

          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            
            children: [
              Image(
                height: 30,
                image: AssetImage(AssetsData.logo),),
              Spacer(),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:const Icon(Icons.arrow_circle_right_outlined,size: 40,color: Color.fromARGB(255, 167, 18, 157),))
            ],
          ),
          
        const  SizedBox(
            height: 10,
          ),
          customtextfiled(
          onPressed:() {
            if(searchword!.isNotEmpty)
            {
              BlocProvider.of<SearchCubit>(context).fetchsearchdata(word: searchword!);
            }
          },
          onSubmitted: (p0) {
            searchword=p0;
          },
        ),
        const  SizedBox(
            height: 30,
          ),
        const  Text(
            'Search Result',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        const  SizedBox(
            height: 30,
          ),
          
        ],
      ),
    
        ),
      SliverToBoxAdapter(
        child: BlocConsumer<SearchCubit, SearchState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              if(state is SearchSuccess)
              {
                return Listsearch(list: state.list,);
              }else if(state is SearchLoading){
                return const Center( child:  LinearProgressIndicator(color: Color.fromARGB(255, 113, 10, 98),),);
              }
              else{
                return  Center(child:Lottie.asset("assets/animation/data2.json"));
              }
            },
          )) ,
      
      ],)
      );
  }
}
/* */