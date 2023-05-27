class Story{
 final String name ;
 final String images;
 Story({required this.images,required this.name});
}

List<Story>storieslist=[
 Story(name: "Add",images: ""),
 Story(name: "Renata",images: "assets/p1.jpeg"),
 Story(name: "Ariana",images: "assets/p2.jpeg"),
 Story(name: "David",images: "assets/p3.jpeg"),
 Story(name: "Paul",images: "assets/p4.jpeg"),
 Story(name: "Michael",images: "assets/p5.jpeg"),
 Story(name: "Priyanka",images: "assets/p6.webp"),
 Story(name: "Alexander",images: "assets/p7.jpg"),
 Story(name: "Bob",images: "assets/p8.jpeg"),
 Story(name: "Yuji",images: "assets/p9.jpeg"),

];


class IndividualChat{
 final String name;
 final String image;
 final String lastmessage;
 final String lasttime;
 final bool isread;
 final List<Chatitems>chatitems;
 
 IndividualChat({required this.name,required this.image,required this.isread,required this.lastmessage,required this.lasttime,required this.chatitems});

}
class Chatitems{
 final String message;
 final bool ismy;
 final String time;
 Chatitems({required this.message,required this.ismy,required this.time});




}



List<IndividualChat>chatlist=[
 IndividualChat(name: "yuji",image:"assets/p9.jpeg",isread: true,lasttime: "12:25",lastmessage: "Okay Man ",chatitems: [
  Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
  Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
  Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
  Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
  Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
  Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
  Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



 ]),
 IndividualChat(name: "Bob",image:"assets/p8.jpeg",isread: false,lasttime: "12:20",lastmessage: "Alright, Its Done ",chatitems: [
  Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
  Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
  Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
  Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
  Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
  Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
  Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



 ]),
 IndividualChat(name: "Alexander",image:"assets/p7.jpg",isread: false,lasttime: "11:59",lastmessage: " Yeah! ur Welcome",chatitems: [
     Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
 Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
 Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
 Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
 Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
 Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
 Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "Priyanka",image:"assets/p6.webp",isread: false,lasttime: "11:30",lastmessage: "Waiting there ",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "Michael",image:"assets/p5.jpeg",isread: true,lasttime: "11:15",lastmessage: "Let's Hit Bar ",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "Paul",image:"assets/p4.jpeg",isread: true,lasttime: "11:00",lastmessage: "Yo! Mate",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "David",image:"assets/p3.jpeg",isread: true,lasttime: "10:45",lastmessage: " ? I don't get it",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "Ariana",image:"assets/p2.jpeg",isread: true,lasttime: "09:25",lastmessage: "Love You babe",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),
 IndividualChat(name: "Renata",image:"assets/p1.jpeg",isread: true,lasttime: "08:10",lastmessage: "Thanks",chatitems: [
Chatitems(message: "Hello , I'm heading to the \nmall this afternoon", ismy: false, time: "09:15"),
Chatitems(message: "Do you want to join with me?", ismy: false, time: "09:15"),
Chatitems(message: "yes it's look awesome", ismy: true, time: "09:20"),
Chatitems(message: "But can i bring my girlfriend?\nShe want to go to mall", ismy: true, time: "09:20"),
Chatitems(message: "Yes, no problem", ismy: false, time: "09:25"),
Chatitems(message: "Thank you Zeo", ismy: true, time: "09:40"),
Chatitems(message: "Yeah, ur welcome", ismy: false, time: "09:25"),



]),


];


