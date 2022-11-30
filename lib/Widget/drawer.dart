import 'package:chitfund/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Drawer(
        backgroundColor: Colors.black,
        width: Get.width * 0.175,
        child: Column(children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          AspectRatio(
            aspectRatio: 1.9,
            child: Center(
              child: SizedBox(
                child: Image.network(
                    'https://www.chitmonks.com/assets/images/c2.png'),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ListTile(
                      onTap: () {
                        Get.offAll(() => const Dashboard());
                      },
                      selectedTileColor: Theme.of(context).colorScheme.primary,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/5432/5432747.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Dashboard',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ExpansionTile(
                      maintainState: false,
                      initiallyExpanded: index == 1,
                      onExpansionChanged: (val) {
                        if (val == true) {
                          setState(() {
                            index = 1;
                          });
                        }
                      },
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2544/2544056.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Master',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      children: <Widget>[
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Ledger Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Ledger Group Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Debtor Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Chit Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Chit Ledger Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Agent Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Area Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Grade Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ExpansionTile(
                      maintainState: false,
                      initiallyExpanded: index == 2,
                      onExpansionChanged: (val) {
                        if (val == true) {
                          setState(() {
                            index = 2;
                          });
                        }
                      },
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3258/3258446.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Transaction',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      children: <Widget>[
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auction Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auction Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auto Action Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auto Action Generation',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auction Payment Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Auction Payment',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Commitment Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Commitment Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daliy Collection Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daliy Collection Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Dc Transfer Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Dc Transfer Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Incentive Creation',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Incentive Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Penalty Creation',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: double.maxFinite,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Theme.of(context).colorScheme.outline,
                                child: Center(
                                    child: Text(
                                  'Penalty Search',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/610/610128.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Finance',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      children: <Widget>[
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daily Finance Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daily Finance Collection Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daily Finance Collection Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daily Finance Summarise Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Daily Finance Details Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Monthly Finance Master',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Monthly Finance Collection Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Monthly Finance Collection Search',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Monthly Finance Summarise Report',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: double.maxFinite,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Theme.of(context).colorScheme.outline,
                                child: Center(
                                    child: Text(
                                  'Monthly Finance Details Report',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1024/1024812.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Accounts',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      children: <Widget>[
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Payment Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Receipt Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Journal Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Debit Note Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Credit Note Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Bank Payment Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Bank Receipt Entry',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Payment Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Receipt Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Journal Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Debit Note Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Credit Note Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Bank Payment Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Bank Receipt Entry Search',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3029/3029337.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Reports',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      children: <Widget>[
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'All Collection Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Grade Level Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Pending Collection Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Pending Summarise Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Demand Collection Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Check Collection Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Dc Balance Check Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Collection Summarise Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Collection Monthly Wise Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Group Monthly Ticket Wise Report',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Group Detailed Statement',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Chit Account Close Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Ledger Balance Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Ledger Balance Detail Report',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                            height: Get.height * 0.06,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: Theme.of(context).colorScheme.outline,
                                  child: Center(
                                      child: Text(
                                    'Ledger Balance Report - cs',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ))),
                            )),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: double.maxFinite,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Theme.of(context).colorScheme.outline,
                                child: Center(
                                    child: Text(
                                  'Ledger Balance Detail Report',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: double.maxFinite,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Theme.of(context).colorScheme.outline,
                                child: Center(
                                    child: Text(
                                  'Day Book Report',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: double.maxFinite,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Theme.of(context).colorScheme.outline,
                                child: Center(
                                    child: Text(
                                  'Cash Book Report',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ListTile(
                      onTap: () {},
                      selectedTileColor: Theme.of(context).colorScheme.primary,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/675/675579.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Tools',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 5, right: 10, left: 10),
                    child: ListTile(
                      onTap: () {},
                      selectedTileColor: Theme.of(context).colorScheme.primary,
                      leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1828/1828490.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'LogOut',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
