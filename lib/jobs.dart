import 'package:flutter/material.dart';

class JobSpec {
  Image picture;
  String title;
  String subtitle;
  double salary;
  String origin;
  String originTime;
  String destination;
  String destinationTime;
  String time;
  int distance;
  String match;
  JobSpec(
      {this.picture,
      this.title,
      this.subtitle = '16 tons',
      this.salary,
      this.origin,
      this.originTime = '12:30',
      this.destination,
      this.destinationTime = '18:30',
      this.time,
      this.distance = 70,
      this.match});
}

final List<JobSpec> fakeJobs = []
..add(JobSpec(picture: Image.asset('placeholder.png'), title: 'Small Gravel', salary: 1535,
origin: 'Los Angeles, USA', destination: 'San Francisco, USA', time: '5-6 hrs.', match: '100%'))


..add(JobSpec(picture: Image.asset('placeholder.png'), title: 'Construction Sand', salary: 1535,
origin: 'Los Angeles, USA', destination: 'San Francisco, USA', time: '5-6 hrs.', match: '100%'))


..add(JobSpec(picture: Image.asset('placeholder.png'), title: 'Industrial Equipment', salary: 1535,
origin: 'Los Angeles, USA', destination: 'San Francisco, USA', time: '5-6 hrs.', match: '100%'));
