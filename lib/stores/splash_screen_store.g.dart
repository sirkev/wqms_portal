// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashScreenStore on _SplashScreenStore, Store {
  late final _$animate2Atom =
      Atom(name: '_SplashScreenStore.animate2', context: context);

  @override
  bool get animate2 {
    _$animate2Atom.reportRead();
    return super.animate2;
  }

  @override
  set animate2(bool value) {
    _$animate2Atom.reportWrite(value, super.animate2, () {
      super.animate2 = value;
    });
  }

  late final _$animateAtom =
      Atom(name: '_SplashScreenStore.animate', context: context);

  @override
  bool get animate {
    _$animateAtom.reportRead();
    return super.animate;
  }

  @override
  set animate(bool value) {
    _$animateAtom.reportWrite(value, super.animate, () {
      super.animate = value;
    });
  }

  late final _$animateTextAtom =
      Atom(name: '_SplashScreenStore.animateText', context: context);

  @override
  bool get animateText {
    _$animateTextAtom.reportRead();
    return super.animateText;
  }

  @override
  set animateText(bool value) {
    _$animateTextAtom.reportWrite(value, super.animateText, () {
      super.animateText = value;
    });
  }

  late final _$opacityAtom =
      Atom(name: '_SplashScreenStore.opacity', context: context);

  @override
  double get opacity {
    _$opacityAtom.reportRead();
    return super.opacity;
  }

  @override
  set opacity(double value) {
    _$opacityAtom.reportWrite(value, super.opacity, () {
      super.opacity = value;
    });
  }

  late final _$opacity2Atom =
      Atom(name: '_SplashScreenStore.opacity2', context: context);

  @override
  double get opacity2 {
    _$opacity2Atom.reportRead();
    return super.opacity2;
  }

  @override
  set opacity2(double value) {
    _$opacity2Atom.reportWrite(value, super.opacity2, () {
      super.opacity2 = value;
    });
  }

  late final _$opacity3Atom =
      Atom(name: '_SplashScreenStore.opacity3', context: context);

  @override
  double get opacity3 {
    _$opacity3Atom.reportRead();
    return super.opacity3;
  }

  @override
  set opacity3(double value) {
    _$opacity3Atom.reportWrite(value, super.opacity3, () {
      super.opacity3 = value;
    });
  }

  late final _$showSignUpAsyncAction =
      AsyncAction('_SplashScreenStore.showSignUp', context: context);

  @override
  Future<dynamic> showSignUp() {
    return _$showSignUpAsyncAction.run(() => super.showSignUp());
  }

  late final _$startAnimationAsyncAction =
      AsyncAction('_SplashScreenStore.startAnimation', context: context);

  @override
  Future<dynamic> startAnimation() {
    return _$startAnimationAsyncAction.run(() => super.startAnimation());
  }

  late final _$_SplashScreenStoreActionController =
      ActionController(name: '_SplashScreenStore', context: context);

  @override
  void increaseOpacity() {
    final _$actionInfo = _$_SplashScreenStoreActionController.startAction(
        name: '_SplashScreenStore.increaseOpacity');
    try {
      return super.increaseOpacity();
    } finally {
      _$_SplashScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showForm() {
    final _$actionInfo = _$_SplashScreenStoreActionController.startAction(
        name: '_SplashScreenStore.showForm');
    try {
      return super.showForm();
    } finally {
      _$_SplashScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseOpacity2() {
    final _$actionInfo = _$_SplashScreenStoreActionController.startAction(
        name: '_SplashScreenStore.increaseOpacity2');
    try {
      return super.increaseOpacity2();
    } finally {
      _$_SplashScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateForm() {
    final _$actionInfo = _$_SplashScreenStoreActionController.startAction(
        name: '_SplashScreenStore.animateForm');
    try {
      return super.animateForm();
    } finally {
      _$_SplashScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateUp() {
    final _$actionInfo = _$_SplashScreenStoreActionController.startAction(
        name: '_SplashScreenStore.animateUp');
    try {
      return super.animateUp();
    } finally {
      _$_SplashScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
animate2: ${animate2},
animate: ${animate},
animateText: ${animateText},
opacity: ${opacity},
opacity2: ${opacity2},
opacity3: ${opacity3}
    ''';
  }
}
