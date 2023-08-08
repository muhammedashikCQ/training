void main()
{

  //Task 1: Basic List Operations
  
  List<int> intList=[];
  intList.add(1);
  intList.add(2);
  intList.add(3);
  intList.add(4);
  intList.add(5);
  print(intList);
  print(intList.length);
  print(intList.contains(3));
  intList.remove(2);
  print(intList);

  //Task 2: List Filtering and Mapping


  List<String> fruits=["Apple","Orange","Mango","Grapes"];
  var newFruits=fruits.where((x) =>x.length<=5);
  print(newFruits.map((e) =>e.toUpperCase()));


  //Task 3: List Sorting

  List<int> intList1=[2,6,3,4,5,8,9,7,1,2,6,5,3,5];
  intList1.sort();
  var newIntList1=intList1;
  print(newIntList1.reversed.toList());
  print(intList1);


//Task 4:List Reducing

List<int> intList2=[];
intList2.addAll([1,2,3,4,5,6,7,8,9,10]);
print(intList2.reduce((value, element) => value+element));

  
//Task 5: List Mapping and Joining

List<String> sentences=["Hi Hello","Hello World","Twinkling stars"];
var x=sentences.map((e) => e.split(' '));
print(x);
print(x.map((element)=>(element.first)).join(','));


//Task 6: List Indexing and Sublist

List<int> intlist3=[];
intlist3.addAll([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]);
print(intlist3.elementAt(5));
print(intlist3.sublist(10,16));



}