import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/detils.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/reating.dart';

class bestsellerItem extends StatelessWidget {
  const bestsellerItem({super.key,required this.book});
  final  BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detilsview(book: book,)));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration:  BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(20)),
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(book.image??''),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    book.title??'',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style:const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      book.authorName??'',
                      maxLines: 2,
                      style:const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                const  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'free',
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      BookRating(rating:book.rating??12)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
