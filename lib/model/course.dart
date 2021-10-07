class Course {
  late String coursename;
  late String location;
  late String timings;

  Course({
    required this.coursename,
    required this.location,
    required this.timings,
  });
}

var courseList = [
  Course(
    coursename: 'Mobile Apps Programming',
    location: 'Room 111',
    timings: 'MW ( 1PM-2:15PM)',
  ),
  Course(
    coursename: 'Computer and Network Security',
    location: 'Room 112',
    timings: 'TTh(9:30 AM - 10:45 AM)',
  ),
  Course(
    coursename: 'Programming Languages',
    location: 'Room 113',
    timings: 'MW(7:30 PM - 8:45 PM)',
  ),
];
