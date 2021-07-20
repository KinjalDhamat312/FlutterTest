class ReqUsers {
  int? results;

  ReqUsers({ this.results});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['results'] = this.results;
    return data;
  }

}