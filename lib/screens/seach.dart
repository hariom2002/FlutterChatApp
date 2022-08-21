import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SearchScreen> {

  TextEditingController searchTextEditingController =  TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Column(
        children: [
          Container(
            color: Color(0x54FFFFFF),
            padding:const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              children: [
                 Expanded(
                  child:  TextField(
                    controller: searchTextEditingController,
                    style:const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Seach Username... ",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,

                    ),
                  ),
                ),

                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors:[
                         Color(0x36FFFFFF),
                         Color(0x0FFFFFFF),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(12)

                  ),
                  child: Image.asset("assets/images/search_white.png")),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
