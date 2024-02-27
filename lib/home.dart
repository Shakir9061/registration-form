import 'package:flutter/material.dart';
import 'package:flutter_application_2/details.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var name = TextEditingController();
  var email = TextEditingController();
  var num = TextEditingController();

  var gender = "";
  var list = [];

  var dropdownvalue = 'malappuram';
  var district = [
    "malappuram",
    "kozhikode",
    "thrissur",
    "palakkad",
    "kollam",
    "wayanad"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'Registration Form',
          style: TextStyle(fontSize: 28),
        )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text('Name  : '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        border: OutlineInputBorder()),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text('E-mail : '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder()),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                child: Text('Phone no : '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 20),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    controller: num,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Number',
                        border: OutlineInputBorder()),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text('Gender :'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: RadioListTile(
                value: 'Male',
                title: Text('Male'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: RadioListTile(
                value: 'Female',
                title: Text('Female'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: RadioListTile(
                value: 'Others',
                title: Text('Others'),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('District : '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: DropdownButton(
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: district.map((String value1) {
                        return DropdownMenuItem(
                            value: value1, child: Text(value1));
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name.clear();
                        email.clear();
                        num.clear();
                        gender = ' ';
                        dropdownvalue = '';
                      });
                    },
                    child: Text('Cancel')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        list.add({
                          'name': name.text,
                          'email': email.text,
                          'Number': num.text,
                          'gender': gender,
                          'district': dropdownvalue
                        });
                        print(list);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(users: list),
                            ));
                      });
                    },
                    child: Text('Submit')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
