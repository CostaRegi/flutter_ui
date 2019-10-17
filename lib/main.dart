import 'package:find_jobs/job_card/job_card_footer.dart';
import 'package:find_jobs/job_card/job_extra.dart';
import 'package:find_jobs/job_card/job_location_detail.dart';
import 'package:find_jobs/job_card/job_picture.dart';
import 'package:find_jobs/job_card/job_summary.dart';
import 'package:find_jobs/jobs.dart';
import 'package:find_jobs/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(FindJobsHome());

class FindJobsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JobsListing(),
    );
  }
}

class JobsListing extends StatefulWidget {
  const JobsListing({Key key}) : super(key: key);
  @override
  _JobsListing createState() => _JobsListing();
}

class _JobsListing extends State<JobsListing>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = [
    Tab(
      key: ObjectKey(1),
      text: 'Show List',
    ),
    Tab(
      key: ObjectKey(2),
      text: 'Show Map',
    )
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        textTheme: appTheme.textTheme,
        title: Text(
          'Find Jobs',
          style: Theme.of(context).textTheme.title,
        ),
        leading: Icon(Icons.menu, color: Colors.black),
        actions: <Widget>[Icon(Icons.filter_list, color: Colors.black)],
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          tabs: tabs,
          onTap: (index) {},
          controller: _tabController,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.black, width: 3.0),
              insets: EdgeInsets.fromLTRB(74, 0, 105, 0)),
        ),
      ),
      body: Stack(children: [
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.add, color: Colors.white)),
                Text('Order', style: TextStyle(color: Colors.white))
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.green[500],
                borderRadius: BorderRadius.only(topRight: Radius.circular(8))),
            // color: Colors.black,
            height: 70,
            width: 60,
          ),
        ),
        TabBarView(
            controller: _tabController,
            children: tabs.map((Tab tab) {
              return SafeArea(
                  child: Builder(
                      builder: (context) => ListView(
                          key: tab.key,
                          shrinkWrap: true,
                          children: fakeJobs
                              .map((fakeJob) => _getListItem(fakeJob))
                              .toList())));
            }).toList()),
      ]),
    );
  }

  Widget _getListItem(JobSpec fakeJob) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: JobPicture(fakeJob.picture)),
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                elevation: 16,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      JobSummary(fakeJob.title, fakeJob.salary),
                      JobExtra(fakeJob.subtitle),
                      SizedBox(height: 20),
                      JobLocationDetail(
                          fakeJob.origin, fakeJob.originTime, Colors.black),
                      JobLocationDetail(fakeJob.destination,
                          fakeJob.destinationTime, Colors.green),
                      JobCardFooter(
                          fakeJob.distance, fakeJob.match, fakeJob.time),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
