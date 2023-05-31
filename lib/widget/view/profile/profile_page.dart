
import 'package:flutter/material.dart';
import 'package:shoping_1/widget/screen/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'My Profile ',
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat,
                size: 30,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 30,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 120,
              width: double.infinity,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s='),
                    radius: 40,
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Rajesh Kumar',
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'rajesh123@gmail.com',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container( alignment: Alignment.center,
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const LoginPage())
                                    );
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.circular(20)),
                                      child: const Text(
                                        "Log Out",
                                        style: TextStyle(color: Colors.white60),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding:const EdgeInsets.all(10) ,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.grey[800],),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.reorder,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("All My Order",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),

                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.pending_actions,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Pending Shipment",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),



                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.theater_comedy_outlined,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Theme",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.shopping_bag_outlined,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Finished Order",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),
                  ],
                ),
              ],
            ),

          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding:const EdgeInsets.all(10) ,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.grey[800],),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.co_present,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Invite Friend",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),

                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.headset_mic_sharp,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Customer Support",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),



                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.rate_review,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Rate Our app",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white60,
                  thickness:.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.edit_note,color: Colors.white60,size: 25,),
                        SizedBox(width: 10,),
                        Text("Review",style: TextStyle(fontSize: 16,color: Colors.white60),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 15,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white60,size: 10,)),
                    ),
                  ],
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
