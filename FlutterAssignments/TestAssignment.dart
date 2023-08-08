void main()
{
  List<String> lst=[];
  lst.add("football");
  lst.add("Cricket");
  lst.add("Basketball");
  lst.add("monk");
  lst.add("asas");
  lst.add("as");

  print(lst);
  List<String> newlst=lst;

  print(newlst);
  print(newlst.reversed.toList());
  print(newlst.any((element) => element.length<3));
  print(newlst.singleWhere((element) => element.length==2));
  print(newlst.lastWhere((element) => element.length>2));
  print(newlst.getRange(1, 3));
  print(newlst.take(2));
  print(newlst.sublist(1,3));
  List<int> list1=[1,2,3,4,5];
  var x=list1.reduce((i,j) => i+j);
  print(x);
  var y=list1.fold(5, (i, j) => i+j);
  print(y);
  Map<int,String> map=lst.asMap();
  print(map);
  
}