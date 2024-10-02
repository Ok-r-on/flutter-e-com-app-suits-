import 'package:hive/hive.dart';

class MyInAppDB {

  final _mybox = Hive.box('myBox');

  List todolists=[];

  //create these tasks the first time the app runs
  void createInitialInAppDB(){
    todolists = [
      ["Task 1",false],
      ["Task 2",false]
    ];
  }

  //update the said db
  void updateInAppDB(){
    _mybox.put("TODOLIST", todolists);
  }

  //load the data
  void loadInAppDB(){
    todolists = _mybox.get('TODOLIST');
  }
}