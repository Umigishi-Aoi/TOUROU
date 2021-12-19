import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';

class AdaptiveBannerAd extends StatefulWidget {
  const AdaptiveBannerAd({Key? key}) : super(key: key);

  @override
  _AdaptiveBannerAdState createState() => _AdaptiveBannerAdState();
}

class _AdaptiveBannerAdState extends State<AdaptiveBannerAd> {

  //バナー広告のインスタンス
  BannerAd? _ad;

  //バナー広告のサイズを保存する状態
  AdSize? _adSize;

  //バナー広告がロードされたかどうかを判別するフラグ
  bool _isAdLoaded = false;

  //バナー広告のサイズの取得
  Future<AdSize?> _getAdSize(BuildContext context) async {
    if (_adSize != null) {
      return _adSize;
    }
    _adSize = await AdSize.getAnchoredAdaptiveBannerAdSize(
        MediaQuery.of(context).orientation == Orientation.portrait
            ? Orientation.portrait
            : Orientation.landscape,
        MediaQuery.of(context).size.width.toInt()) as AdSize;
    return _adSize;
  }

  @override
  void dispose() {
    if(_ad != null) {
      _ad!.dispose();
    }
    _adSize = null;
    _isAdLoaded = false;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        alignment: Alignment.center,
        height: _adSize != null ? _adSize!.height.toDouble() : 0,
        width: _adSize != null ? _adSize!.width.toDouble() : 0,
        child: FutureBuilder(
            future: _getAdSize(context),
            builder: (context, snapshot) {
              if (snapshot.connectionState ==
                  ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString(),
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.3),
                  );
                }
                if (!_isAdLoaded) {
                  _ad = BannerAd(
                    adUnitId: AdHelper.bannerAdUnitId,
                    size: _adSize!,
                    request: AdRequest(),
                    listener: BannerAdListener(
                      onAdLoaded: (_) {
                        setState(() {
                          _isAdLoaded = true;
                        });
                      },
                      onAdFailedToLoad: (ad, error) {
                        //Load失敗時の処理
                        ad.dispose();
                        print(
                            'Ad load failed (code=${error.code} message=${error.message})');
                      },
                    ),
                  );

                  _ad!.load();
                  return Container();
                }
                return AdWidget(ad: _ad!);
              } else {
                return Container();
              }
            }),
      );
    });
  }
}
