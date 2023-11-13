
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shopping/shoes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: null,
        backgroundColor: Colors.transparent,
        title: Text('Shoes',style: TextStyle(fontSize: 25,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(aspectRatio: 2.2/1,
                    child: FadeInUp(duration: Duration(microseconds: 1000), child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text('All',style: TextStyle(fontSize: 20),),),
                    ),),),
                    AspectRatio(aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(microseconds: 1100), child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                        ),
                        child: Center(child: Text('Sneakers',style: TextStyle(fontSize: 17),),),
                      ),),),
                    AspectRatio(aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(microseconds: 1200), child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(

                        ),
                        child: Center(child: Text('Footbal',style: TextStyle(fontSize: 17),),),
                      ),),),
                    AspectRatio(aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(microseconds: 1300), child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                        ),
                        child: Center(child: Text('Soccer',style: TextStyle(fontSize: 17),),),
                      ),),),
                    AspectRatio(aspectRatio: 2.2/1,
                      child: FadeInUp(duration: Duration(microseconds: 1400), child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                        ),
                        child: Center(child: Text('Golf',style: TextStyle(fontSize: 17),),),
                      ),),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FadeInUp(child: makeImage('images/one.jpg', "red",context)),
              FadeInUp(child: makeImage('images/two.jpg', "blue",context)),
              FadeInUp(child: makeImage('images/sho.jpg', "white",context)),


            ],
          ),
        ),
      ),
    );
  }
}

Widget makeImage(image,tag,context){
  return Hero(tag: tag, child: GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes(image:image,tag: tag)));
  },
  child: Container(
    height: 250,
    width: double.infinity,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          offset:Offset(0,10),
        ),

      ]
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [FadeInUp(child: Text("Sneaker",style: TextStyle(
              fontSize: 30,color: Colors.white,
            ),
            ),
            ),
             FadeInUp(child: Text("Nike",style: TextStyle(
               fontSize: 20,color: Colors.white,
             ),
             ),
             ),

            ],)),
            FadeInUp(child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(child: Icon(Icons.favorite_border,size: 20,),),))

          ],
        ),
        FadeInUp(child: Container(child: Text('100\$',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),))
      ],
    ),
  ),
  ));
}