import 'package:find_jobs/job_card/job_card_advertiser.dart';
import 'package:find_jobs/job_card/job_detail_duration.dart';
import 'package:find_jobs/job_card/job_location_indicator.dart';
import 'package:find_jobs/job_card/job_time_spec.dart';
import 'package:find_jobs/jobs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobDetail extends StatefulWidget {
  final JobSpec spec;
  JobDetail(this.spec);

  @override
  _JobDetail createState() => _JobDetail();
}

class _JobDetail extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          widget.spec.title,
          style: Theme.of(context).textTheme.title,
        ),
        actions: <Widget>[
          Icon(
            Icons.content_paste,
            color: Colors.black,
          )
        ],
        shape: Border(bottom: BorderSide(width: .1, color: Colors.grey)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          _TitleSection(widget.spec.title),
          JobLocationMoveSteps(widget.spec.origin, widget.spec.destination),
          JobAdvertiser(widget.spec.picture),
          JobDuration(widget.spec.originTime, widget.spec.destinationTime),
          JobTimeSpec(widget.spec.time, '${widget.spec.distance}', widget.spec.match),
        ],
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  final String _title;
  _TitleSection(this._title);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 100),
      child: Center(
          child: Text(_title, style: (Theme.of(context).textTheme.title))),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .1, color: Colors.grey))),
    );
  }
}
