import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonsFlutter extends StatelessWidget {
  const ButtonsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///////////////////ELEVATED BUTTON NORMAL///////////////////////
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {},
                child: Text("Hello World"),
              ),
              ///////////////////ELEVATED BUTTON NORMAL BUT WITH NULL I.E DISABLED///////////////////////
              ElevatedButton(
                //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: null,
                child: Text("Hello World"),
              ),
              //////ELEVATED BUTTON IN A SIZED BOX TO HANDLE THE SIZE OF THE BUTTON ALSO//////
              SizedBox(
                height: 150,
                width: 100,
                child: ElevatedButton(
                  //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {},
                  child: Text("Hello World"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //////////ELEVATED BUTTON WITH CHANGED COLOR AND SIZE WITHOUT USING SIZED BOX////////////
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
                //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello World"),
                    Icon(Icons.arrow_downward),
                  ],
                ),
              ),
              ///////////////////////////APPLYING ICON IN FLUTTER////////////////////////////
              Icon(
                Icons.add_road_rounded,
                size: 50,
              ),
              //////////////////////USING ICON BUTTON IN FLUTTER///////////////////
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                ),
                //color: Colors.white,
              ),
              ////////////////////BUTTON WITH ICON IN IT////////////////
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                ),
                icon: Icon(Icons.arrow_drop_down),
                label: Text("Open"),
              ),
              //////////////////TEXTBUTTON IN FLUTTER///////////////
              TextButton(
                onPressed: () {},
                child: Text(
                  "Invite",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(200, 50),
                    elevation: 2),
              ),
              /////////////////////TEXTBUTTON WITH ICON //////////////////////
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Invite"),
              ),
              /////////////////////TEXTBUTTON WITH ICON ON ANOTHER DIRECTION//////////////////////
              TextButton.icon(
                onPressed: () {},
                icon: Text("Invite"),
                label: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
                backgroundColor: Colors.red,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
