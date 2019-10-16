import 'package:find_jobs/jobs.dart';
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
        title: Text(
          'Find Jobs',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
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
      body: TabBarView(
          controller: _tabController,
          children: tabs.map((Tab tab) {
            // final String label = tab.text.toLowerCase();
            return SafeArea(child: Builder(builder: (context) {
              return ListView(
                  key: tab.key,
                  shrinkWrap: true,
                  children: fakeJobs.map((fakeJob) {
                    return _getListItem(fakeJob);
                  }).toList());
            }));
          }).toList()),
    );
  }

  Widget _getListItem(JobSpec fakeJob) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(10), child: fakeJob.picture)),
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                elevation: 16,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(fakeJob.title,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Text('\$ ${fakeJob.salary}',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(fakeJob.subtitle, style: TextStyle(fontSize: 12))
                      ],
                    ),

                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Text(fakeJob.originTime,
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Icon(Icons.my_location, color: Colors.black),
                        Text(fakeJob.origin)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(fakeJob.destinationTime,
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Icon(Icons.my_location, color: Colors.green),
                        Text(fakeJob.destination)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(fakeJob.time, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        Text('${fakeJob.distance} km', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        Text(fakeJob.match, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(alignment:  Alignment.topLeft, child: Icon(Icons.keyboard_arrow_right, color: Colors.white)),
                              Text('Show', style: TextStyle(color: Colors.white))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)
                            )
                          ),
                          // color: Colors.black,
                          height: 60,
                          width: 60,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
