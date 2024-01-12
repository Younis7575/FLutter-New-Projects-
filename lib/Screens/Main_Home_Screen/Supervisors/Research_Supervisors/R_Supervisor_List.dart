import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class R_Supervisor_List extends StatelessWidget {
  const R_Supervisor_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xFF21262d),
        body: SizedBox.expand(
          child: Stack(
            // alignment: Alignment.center,
            children: [
              const Positioned(
                top: 200,
                left: 10,
                child: GradientBall(
                  colors: [
                    Colors.deepOrange,
                    Colors.amber,
                  ],
                ),
              ),
              const Positioned(
                top: 400,
                right: 10,
                child: GradientBall(
                  size: Size.square(200),
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supr()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text(' Ph.D\n MS(CS)\n BSC(Hons) ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}
