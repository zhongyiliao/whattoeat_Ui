class Photo {
  String imageUrl;
  double height;

  Photo(this.imageUrl, this.height);

  static List<Photo> generateImages() {
    return [
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
      Photo('assets/images/room.jpg', 308),
      Photo('assets/images/room.jpg', 200),
    ];
  }
}
