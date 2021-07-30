import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voltour/status.dart';
class VolList extends StatefulWidget {
  

  @override
  _VolListState createState() => _VolListState();
}

class _VolListState extends State<VolList> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: Status(),
              height: deviceSize.height * 0.15,
            )
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20)),
    ),
              elevation: 10,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80")),
                                ),
                              ),
                              new SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 
                                  Text(
                                    "Deven",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                "Greater Kailash, New Delhi",
                                style: TextStyle(color: Colors.grey,),textAlign: TextAlign.start,
                              ),
                                ],
                              ),
                              
                            ],
                          ),
                          
                          
                          new IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: null,
                          )
                        ],
                      ),
                      
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        
                          child: ClipRRect(
                             borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/v1555358985/shape/mentalfloss/istock_000039944040_small.jpg?itok=tXCUrjhO",
                              fit: BoxFit.cover,
                            ),
                          ),
              
                       
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text("Food distribtion for Labourers",style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              
                              Container(
                                child: IconButton(
                                  icon: new Icon(isPressed
                                      ? FontAwesomeIcons.thumbsUp
                                      : FontAwesomeIcons.thumbsUp),
                                  color: isPressed ? Colors.red : Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      isPressed = !isPressed;
                                    });
                                  },
                                ),
                              ),
                             
                              new SizedBox(
                                width: 16.0,
                              ),
                              new Icon(
                                FontAwesomeIcons.comment,
                              ),
                              
                            ],
                          ),
                          new Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                            ),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: "Add a comment...",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child:
                          Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
            ),
          ),
    );
  }
}