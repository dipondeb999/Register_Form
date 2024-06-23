
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

  MySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  MyAlertDialog(context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: const Text('Alert!!!'),
              content: const Text('Do you want to submit it.'),
              actions: [
                TextButton(
                    onPressed: (){
                      MySnackBar("Submit Successfully", context);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Yes'),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text('No'),
                ),
              ],
            ),
        );
      },
    );
  }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 60),
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Register Form',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Register Now',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your First Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your Last Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your E-mail Address'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Enter Your Password'),
                      border: OutlineInputBorder(),
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your Confirm Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    MyAlertDialog(context);
                  },
                  child: Text(
                    'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: buttonStyle,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Text(
                  'forget password?',
                style: TextStyle(
                  fontSize: 17,
                ),
                ),
              ),
              const Text(
                'create an another account',
              style: TextStyle(
                fontSize: 17,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
