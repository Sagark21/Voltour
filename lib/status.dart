import 'package:flutter/material.dart';
class Status extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
       Text("22 jul",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w700) ,textAlign: TextAlign.right,),
         Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => new Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                new Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80")),
                 
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
                
                     
                     Container()
              ],
            ),
      ),
    ),
  )
        ],
      ),
    );
  }
}