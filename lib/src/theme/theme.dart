part of theme;

class YTheme {
  final int id;
  final String name;
  final bool isDark;
  final YTColors colors;
  final YTVariableStyles variableStyles;

  YTheme(this.name, {required this.id, required this.isDark, required this.colors, required this.variableStyles});
}

class YCurrentTheme {
  int currentTheme;
  final List<YTheme> themes;

  YCurrentTheme({required this.currentTheme, required this.themes});

  YTheme get _ct => this.themes.firstWhere((t) => t.id == this.currentTheme);

  String get name => this._ct.name;
  bool get isDark => this._ct.isDark;
  YTColors get colors => this._ct.colors;
  YTVariableStyles get buttonStyles => this._ct.variableStyles;
}

late YCurrentTheme theme;
