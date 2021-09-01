import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/store/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeStore _homeStore = Modular.get<HomeStore>();

  List<ReactionDisposer> disposer = [];

  ReactionDisposer dialogReaction() {
    return reaction((v) => _homeStore.showDialog, (e) {
      if (e) {
        openDialog();
      }
    });
  }

  openDialog() {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'lib/img/trophy.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Winner",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    disposer.add(dialogReaction());
  }

  @override
  void dispose() {
    disposer.forEach((element) => element);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(builder: (_) {
            return Text(
              "${_homeStore.value}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          }),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              _homeStore.increment();
            },
            child: Text(
              "Press",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
