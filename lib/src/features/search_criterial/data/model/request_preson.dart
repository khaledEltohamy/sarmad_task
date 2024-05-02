class RequestPerson {
final String fname , mname , nat;

  RequestPerson({required this.fname, required this.mname, required this.nat});
  
  factory RequestPerson.successCase()=> RequestPerson(fname: "Mohamed", mname: "Ibrahem", nat: "Egypt");
  factory RequestPerson.successCaseFname()=> RequestPerson(fname: "Mohamed", mname: "", nat: "");
  factory RequestPerson.successCaseMname()=> RequestPerson(fname: "", mname: "Ibrahem", nat: "Egypt");
  factory RequestPerson.fieldNameCase()=> RequestPerson(fname: "", mname: "", nat: "Egypt");
  factory RequestPerson.fieldNatCase()=> RequestPerson(fname: "mohamed", mname: "ali", nat: "monkey");  

  Map<String ,dynamic> toJson()=> {
    "fname" : fname,
    "mname":mname,
    "nat":nat
  };

  Map<String ,String> successCaseToJson()=> {
    "fname" : "Mohamed",
    "mname":"Ibrahem",
    "nat":"Egypt"
  };
     
  
}