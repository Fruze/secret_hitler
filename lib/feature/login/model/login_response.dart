/// code : 200
/// meta : {"pagination":{"total":3726,"pages":187,"page":1,"limit":20}}
/// data : [{"id":3779,"name":"Narinder Embranthiri DDS","email":"dds_embranthiri_narinder@bartoletti.com","gender":"female","status":"inactive"},{"id":3776,"name":"Niranjan Naik","email":"naik_niranjan@hermann.net","gender":"male","status":"active"},{"id":3775,"name":"Malati Butt","email":"butt_malati@bogisich.co","gender":"female","status":"active"},{"id":3774,"name":"Vidhya Adiga Jr.","email":"vidhya_jr_adiga@kuphal-buckridge.org","gender":"female","status":"active"},{"id":3773,"name":"Anusuya Rana Sr.","email":"anusuya_rana_sr@roob-schmidt.biz","gender":"male","status":"active"},{"id":3772,"name":"Amodini Patil","email":"amodini_patil@ebert.org","gender":"female","status":"inactive"},{"id":3770,"name":"Sujata Iyengar","email":"sujata_iyengar@mueller.name","gender":"female","status":"inactive"},{"id":3768,"name":"Sachin Butt JD","email":"sachin_jd_butt@marks.name","gender":"female","status":"inactive"},{"id":3767,"name":"Nagabhushanam Gupta PhD","email":"phd_nagabhushanam_gupta@lebsack-emard.co","gender":"male","status":"inactive"},{"id":3766,"name":"Ameyatma Talwar","email":"ameyatma_talwar@abernathy-ortiz.co","gender":"female","status":"active"},{"id":3765,"name":"Gov. Bhagirathi Gandhi","email":"gov_gandhi_bhagirathi@schuster.biz","gender":"male","status":"inactive"},{"id":3764,"name":"Himani Mehrotra","email":"himani_mehrotra@murazik.net","gender":"male","status":"inactive"},{"id":3763,"name":"Balagopal Pilla","email":"balagopal_pilla@bergnaum.co","gender":"male","status":"active"},{"id":3755,"name":"Sheela Pilla","email":"sheela_pilla@kovacek.name","gender":"female","status":"active"},{"id":3754,"name":"Mandakini Gill","email":"mandakini_gill@kub.com","gender":"female","status":"inactive"},{"id":3753,"name":"Bilva Achari","email":"bilva_achari@frami.info","gender":"female","status":"active"},{"id":3752,"name":"Advaya Johar","email":"advaya_johar@cartwright.name","gender":"male","status":"active"},{"id":3751,"name":"Kamala Dhawan","email":"dhawan_kamala@harvey.biz","gender":"female","status":"active"},{"id":3750,"name":"Vidhur Acharya","email":"acharya_vidhur@ziemann-monahan.org","gender":"male","status":"inactive"},{"id":3749,"name":"Prem Rana","email":"prem_rana@altenwerth.name","gender":"male","status":"active"}]

class LoginResponse {
  LoginResponse({
    int? code,
    Meta? meta,
    List<Data>? data,
  }) {
    _code = code;
    _meta = meta;
    _data = data;
  }

  LoginResponse.fromJson(dynamic json) {
    _code = json['code'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  int? _code;
  Meta? _meta;
  List<Data>? _data;

  LoginResponse copyWith({
    int? code,
    Meta? meta,
    List<Data>? data,
  }) =>
      LoginResponse(
        code: code ?? _code,
        meta: meta ?? _meta,
        data: data ?? _data,
      );

  int? get code => _code;

  Meta? get meta => _meta;

  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 3779
/// name : "Narinder Embranthiri DDS"
/// email : "dds_embranthiri_narinder@bartoletti.com"
/// gender : "female"
/// status : "inactive"

class Data {
  Data({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? status,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _gender = gender;
    _status = status;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _gender = json['gender'];
    _status = json['status'];
  }

  int? _id;
  String? _name;
  String? _email;
  String? _gender;
  String? _status;

  Data copyWith({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? status,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
        gender: gender ?? _gender,
        status: status ?? _status,
      );

  int? get id => _id;

  String? get name => _name;

  String? get email => _email;

  String? get gender => _gender;

  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['gender'] = _gender;
    map['status'] = _status;
    return map;
  }
}

/// pagination : {"total":3726,"pages":187,"page":1,"limit":20}

class Meta {
  Meta({
    Pagination? pagination,
  }) {
    _pagination = pagination;
  }

  Meta.fromJson(dynamic json) {
    _pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Pagination? _pagination;

  Meta copyWith({
    Pagination? pagination,
  }) =>
      Meta(
        pagination: pagination ?? _pagination,
      );

  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }
}

/// total : 3726
/// pages : 187
/// page : 1
/// limit : 20

class Pagination {
  Pagination({
    int? total,
    int? pages,
    int? page,
    int? limit,
  }) {
    _total = total;
    _pages = pages;
    _page = page;
    _limit = limit;
  }

  Pagination.fromJson(dynamic json) {
    _total = json['total'];
    _pages = json['pages'];
    _page = json['page'];
    _limit = json['limit'];
  }

  int? _total;
  int? _pages;
  int? _page;
  int? _limit;

  Pagination copyWith({
    int? total,
    int? pages,
    int? page,
    int? limit,
  }) =>
      Pagination(
        total: total ?? _total,
        pages: pages ?? _pages,
        page: page ?? _page,
        limit: limit ?? _limit,
      );

  int? get total => _total;

  int? get pages => _pages;

  int? get page => _page;

  int? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    map['pages'] = _pages;
    map['page'] = _page;
    map['limit'] = _limit;
    return map;
  }
}
