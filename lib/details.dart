import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({super.key, required this.users});
  List users;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: widget.users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text('Name :'),
                  ),
                  Text(widget.users[index]['name']),
                ],
              ),
              Row(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text('E-mail : '),
                  ),
                  Text(widget.users[index]['email']),
                ],
              ),
              Row(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text('Number : '),
                  ),
                  Text(widget.users[index]['Number']),
                ],
              ),
              Row(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text('Gender : '),
                  ),
                  Text(widget.users[index]['gender']),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text('District : '),
                  ),
                  Text(widget.users[index]['district']),
                ],
              ),
            ],
          ),
        );
      },
    ));
  }
}
