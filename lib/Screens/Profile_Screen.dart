import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Profile",),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/009/749/643/original/woman-profile-mascot-illustration-female-avatar-character-icon-cartoon-girl-head-face-business-user-logo-free-vector.jpg'),
              ),
              const SizedBox(height: 10.0,),
              const Text(
                'Sophia Carter',
                style: TextStyle(fontSize:  22,fontWeight:FontWeight.bold),
              ),
              const Text(
                'Product Designer',
                style: TextStyle(fontSize:  15,color: Colors.grey),
              ),
              const SizedBox(height: 15,),
              const Align(
                alignment: Alignment.centerLeft,
                child:  Text(
                  'Contacts',
                  style: TextStyle(fontSize:  20,fontWeight:FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_rounded),
                    SizedBox(width: 15,),
                    Text('sophia.carter@email.com'),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 15,),
                    Text('+1 (555) 123-4567'),
                  ],
                ),
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('WE Will Contact Soon',
                    ),
                ),
              );
            },
            child: const Text('Contact Me',),
        ),
      ),
    );
  }
}
