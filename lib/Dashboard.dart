import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

List<String> products = [
  'assets/images/prod-1.jpg',
  'assets/images/prod-2.jpg',
  'assets/images/prod-3.jpg'
];
List<String> newArrival = [
  'assets/images/arr-1.jpg',
  'assets/images/arr-2.jpg',
  'assets/images/arr-3.jpg',
  'assets/images/arr-1.jpg',
  'assets/images/arr-2.jpg',
  'assets/images/arr-3.jpg',
];

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)), 
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 200, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal, 
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(products[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text('New Arrivals',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Spacer(),
                  InkWell(
                    onTap: (){},
                    child: Text('View all',style: TextStyle(fontSize: 12, color: Colors.grey),)),
                ],
              ),
            ),


            SizedBox(
              height: 200, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal, 
                itemCount: newArrival.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Stack(
                      children: [
Container(
                        width: 200,
                        
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(newArrival[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: InkWell(
                          onTap: (){},
                          child: CircleAvatar(
                            backgroundColor: Colors.black, radius: 15,
                            child: Icon(Icons.favorite, color: Colors.white, size: 15,),
                            ),
                        )
                          )
                      ],
                      
                    ),
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
