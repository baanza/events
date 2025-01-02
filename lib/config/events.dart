class Events {
  final String imagepath;
  final String price;
  final String date;
  final String title;
  final String location;

  Events(
      {required this.imagepath,
      required this.price,
      required this.date,
      required this.title,
      required this.location});
}

List<Events> fake_db = [
  Events(
      imagepath: "assets/images/events1.jpg",
      price: "Free",
      date: "23 January 2025",
      title: "We Lewing",
      location: "some Bar, Rongai"),
  Events(
      imagepath: "assets/image/upload1.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location: "Your Home somewhere"),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: "Pinned, kwa pin"),
  Events(
      imagepath: "assets/image/january.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location: "Your Home somewhere"),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: "Pinned, kwa pin"),
  Events(
      imagepath: "assets/image/january.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location: "Your Home somewhere"),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: "Pinned, kwa pin"),
];
