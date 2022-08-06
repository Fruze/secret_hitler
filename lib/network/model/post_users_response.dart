class PostUsersResponse {
  PostUsersResponse({
    this.userId,
  });

  PostUsersResponse.fromJson(dynamic json) {
    userId = json['user_id'];
  }

  int? userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    return map;
  }
}
