import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _SelectedTemplateUrl = '';
  String get SelectedTemplateUrl => _SelectedTemplateUrl;
  set SelectedTemplateUrl(String value) {
    _SelectedTemplateUrl = value;
  }

  String _BlueTherapypng = 'Blue_Therapy.png';
  String get BlueTherapypng => _BlueTherapypng;
  set BlueTherapypng(String value) {
    _BlueTherapypng = value;
  }

  String _DefaultQuoteTemplate = 'Tonal_Background.png';
  String get DefaultQuoteTemplate => _DefaultQuoteTemplate;
  set DefaultQuoteTemplate(String value) {
    _DefaultQuoteTemplate = value;
  }

  String _FlowerTemplate = 'FlowerTemplate.png';
  String get FlowerTemplate => _FlowerTemplate;
  set FlowerTemplate(String value) {
    _FlowerTemplate = value;
  }

  String _Fadefde = 'FadeFde.ong';
  String get Fadefde => _Fadefde;
  set Fadefde(String value) {
    _Fadefde = value;
  }

  String _Mountaine = 'Mountains.png';
  String get Mountaine => _Mountaine;
  set Mountaine(String value) {
    _Mountaine = value;
  }

  String _ClimbTemplatepng = 'ClimbTemplate.png';
  String get ClimbTemplatepng => _ClimbTemplatepng;
  set ClimbTemplatepng(String value) {
    _ClimbTemplatepng = value;
  }

  String _Underwaterpng = 'Underwater.png';
  String get Underwaterpng => _Underwaterpng;
  set Underwaterpng(String value) {
    _Underwaterpng = value;
  }
}
