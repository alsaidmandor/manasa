class AppLanguageModel
{
  String? titleSignup;
  String? title2;
  String? title3;
  String? body1;
  String? body2;
  String? body3;
  String? loginTitle;
  String? loginSubTitle;
  String? email;
  String? password;
  String? login;
  String? donNotHave;
  String? registerNow;
  String? emailValidation;
  String? passwordValidation;
  String? home;
  String? categories;
  String? cart;
  String? settings;
  String? salla;
  String? search;
  String? discount;
  String? currency;
  String? browse;
  String? new_arrivals;
  String? see;

  AppLanguageModel({
    this.titleSignup,
    this.title2,
    this.title3,
    this.body1,
    this.body2,
    this.body3,
    this.loginTitle,
    this.loginSubTitle,
    this.email,
    this.password,
    this.login,
    this.donNotHave,
    this.registerNow,
    this.emailValidation,
    this.passwordValidation,
    this.home,
    this.categories,
    this.cart,
    this.settings,
    this.salla,
    this.search,
    this.discount,
    this.currency,
    this.browse,
    this.new_arrivals,
    this.see,
  });

  AppLanguageModel.fromJson(Map<String, dynamic> json)
  {
    titleSignup = json['titleSignup'];
    title2 = json['title2'];
    title3 = json['title3'];
    body1 = json['body1'];
    body2 = json['body2'];
    body3 = json['body3'];
    loginTitle = json['loginTitle'];
    loginSubTitle = json['loginSubTitle'];
    email = json['email'];
    password = json['password'];
    login = json['login'];
    donNotHave = json['donNotHave'];
    registerNow = json['registerNow'];
    emailValidation = json['emailValidation'];
    passwordValidation = json['passwordValidation'];
    home = json['home'];
    categories = json['categories'];
    cart = json['cart'];
    settings = json['settings'];
    salla = json['salla'];
    search = json['search'];
    discount = json['discount'];
    currency = json['currency'];
    browse = json['browse'];
    new_arrivals = json['new_arrivals'];
    see = json['see'];
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title1'] = this.title1;
    data['title2'] = this.title2;
    data['title3'] = this.title3;
    data['body1'] = this.body1;
    data['body2'] = this.body2;
    data['body3'] = this.body3;
    return data;
  }*/
}