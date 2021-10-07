class Event {
  late String eventname;
  late String location;
  late String timings;
  late String imageURL;

  Event({
    required this.eventname,
    required this.location,
    required this.timings,
    required this.imageURL,
  });
}

var eventList = [
  Event(
    eventname: 'Baseball Semi-Finals',
    location: 'Stadium 1',
    timings: '3 PM - 5 PM',
    imageURL:
        'https://m.media-amazon.com/images/I/61Osm90xOuL._AC_UY327_FMwebp_QL65_.jpg',
  ),
  Event(
    eventname: 'Girls Volleyball Finals',
    location: 'Nigh Stadium',
    timings: '10 AM - 12 PM',
    imageURL:
        'https://m.media-amazon.com/images/I/71-ZVV+-79L._AC_UY327_FMwebp_QL65_.jpg',
  ),
  Event(
    eventname: 'Cricket',
    location: 'UCO Main Stadium',
    timings: '1 PM - 3 PM',
    imageURL:
        'https://m.media-amazon.com/images/I/61FJsuMWFPL._AC_UY327_FMwebp_QL65_.jpg',
  ),
  Event(
    eventname: 'Music Concert',
    location: 'Ballroom 2',
    timings: '6 PM - 7 PM',
    imageURL:
        'https://m.media-amazon.com/images/I/91gzNVEGiEL._AC_UY327_FMwebp_QL65_.jpg',
  ),
];
