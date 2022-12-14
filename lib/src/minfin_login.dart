import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'other_country.dart';

class MinfinLogin extends StatefulWidget {
  final bool? isUzb;
  final WidgetBuilder builderUzb;
  final Function(String login, String password) onTestLogin;

  const MinfinLogin._({
    Key? key,
    this.isUzb,
    required this.builderUzb,
    required this.onTestLogin,
  }) : super(key: key);

  static MinfinLogin? _instance;

  static void ensureInitialized({
    bool? isUzb,
    required WidgetBuilder builderUzb,
    required Function(String login, String password) onTestLogin,
  }) {
    _instance = MinfinLogin._(
      isUzb: isUzb,
      builderUzb: builderUzb,
      onTestLogin: onTestLogin,
    );
  }

  static MinfinLogin getInstance() {
    if (_instance != null) return _instance!;
    throw "MinfinOneIDPage ensureInitialized qilinmagan";
  }

  @override
  State<MinfinLogin> createState() => _MinfinLoginState();
}

class _MinfinLoginState extends State<MinfinLogin> {
  final dio = Dio();
  var status = _EnumStatus.loading;

  @override
  void initState() {
    load();
    super.initState();
  }

  Future<void> load() async {
    if (widget.isUzb != null) {
      if (widget.isUzb!) {
        setState(() => status = _EnumStatus.widgetUzb);
      } else {
        setState(() => status = _EnumStatus.widgetOther);
      }
      return;
    }
    if (await InternetConnectionChecker().hasConnection) {
      setState(() => status = _EnumStatus.loading);
      try {
        final response = await dio.get("http://ip-api.com/json/");
        if (response.data["countryCode"] == "UZ") {
          setState(() => status = _EnumStatus.widgetUzb);
        } else {
          setState(() => status = _EnumStatus.widgetOther);
        }
      } catch (_) {
        setState(() => status = _EnumStatus.fail);
      }
    } else {
      setState(() => status = _EnumStatus.fail);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(builder: (context) {
        if (status == _EnumStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (status == _EnumStatus.fail) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.wifi_tethering_error,
                  size: kToolbarHeight * 2,
                ),
                MaterialButton(
                  onPressed: load,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          );
        }
        if (status == _EnumStatus.widgetUzb) {
          return Builder(builder: widget.builderUzb);
        }
        return OtherCountry(onLogin: widget.onTestLogin);
      }),
    );
  }
}

enum _EnumStatus { fail, loading, widgetUzb, widgetOther }
