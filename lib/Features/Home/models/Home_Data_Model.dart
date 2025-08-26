class HomeDataModel {
  HomeDataModel({
      this.value, 
      this.data, 
      this.code,});

  HomeDataModel.fromJson(dynamic json) {
    value = json['value'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    code = json['code'];
  }
  bool? value;
  Data? data;
  num? code;
HomeDataModel copyWith({  bool? value,
  Data? data,
  num? code,
}) => HomeDataModel(  value: value ?? this.value,
  data: data ?? this.data,
  code: code ?? this.code,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['code'] = code;
    return map;
  }

}

class Data {
  Data({
      this.freeSubscriptionPeriod, 
      this.referrals, 
      this.sliders, 
      this.programs, 
      this.exams, 
      this.newsFeeds, 
      this.successStories, 
      this.articles, 
      this.biologyAge, 
      this.biologyAgeDescription, 
      this.isCheckinReviewed,});

  Data.fromJson(dynamic json) {
    freeSubscriptionPeriod = json['free_subscription_period'];
    referrals = json['referrals'] != null ? Referrals.fromJson(json['referrals']) : null;
    if (json['sliders'] != null) {
      sliders = [];
      json['sliders'].forEach((v) {
        sliders?.add(Sliders.fromJson(v));
      });
    }

    newsFeeds = json['news_feeds'] != null ? NewsFeeds.fromJson(json['news_feeds']) : null;
    if (json['success_stories'] != null) {
      successStories = [];
      json['success_stories'].forEach((v) {
        successStories?.add(SuccessStories.fromJson(v));
      });
    }
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
    biologyAge = json['biology_age'];
    biologyAgeDescription = json['biology_age_description'];
    isCheckinReviewed = json['is_checkin_reviewed'];
  }
  String? freeSubscriptionPeriod;
  Referrals? referrals;
  List<Sliders>? sliders;
  List<dynamic>? programs;
  List<dynamic>? exams;
  NewsFeeds? newsFeeds;
  List<SuccessStories>? successStories;
  List<Articles>? articles;
  num? biologyAge;
  dynamic biologyAgeDescription;
  bool? isCheckinReviewed;
Data copyWith({  String? freeSubscriptionPeriod,
  Referrals? referrals,
  List<Sliders>? sliders,
  List<dynamic>? programs,
  List<dynamic>? exams,
  NewsFeeds? newsFeeds,
  List<SuccessStories>? successStories,
  List<Articles>? articles,
  num? biologyAge,
  dynamic biologyAgeDescription,
  bool? isCheckinReviewed,
}) => Data(  freeSubscriptionPeriod: freeSubscriptionPeriod ?? this.freeSubscriptionPeriod,
  referrals: referrals ?? this.referrals,
  sliders: sliders ?? this.sliders,
  programs: programs ?? this.programs,
  exams: exams ?? this.exams,
  newsFeeds: newsFeeds ?? this.newsFeeds,
  successStories: successStories ?? this.successStories,
  articles: articles ?? this.articles,
  biologyAge: biologyAge ?? this.biologyAge,
  biologyAgeDescription: biologyAgeDescription ?? this.biologyAgeDescription,
  isCheckinReviewed: isCheckinReviewed ?? this.isCheckinReviewed,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['free_subscription_period'] = freeSubscriptionPeriod;
    if (referrals != null) {
      map['referrals'] = referrals?.toJson();
    }
    if (sliders != null) {
      map['sliders'] = sliders?.map((v) => v.toJson()).toList();
    }
    if (programs != null) {
      map['programs'] = programs?.map((v) => v.toJson()).toList();
    }
    if (exams != null) {
      map['exams'] = exams?.map((v) => v.toJson()).toList();
    }
    if (newsFeeds != null) {
      map['news_feeds'] = newsFeeds?.toJson();
    }
    if (successStories != null) {
      map['success_stories'] = successStories?.map((v) => v.toJson()).toList();
    }
    if (articles != null) {
      map['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    map['biology_age'] = biologyAge;
    map['biology_age_description'] = biologyAgeDescription;
    map['is_checkin_reviewed'] = isCheckinReviewed;
    return map;
  }

}

class Articles {
  Articles({
      this.id, 
      this.title, 
      this.content, 
      this.image, 
      this.date,});

  Articles.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    image = json['image'];
    date = json['date'];
  }
  num? id;
  String? title;
  String? content;
  String? image;
  String? date;
Articles copyWith({  num? id,
  String? title,
  String? content,
  String? image,
  String? date,
}) => Articles(  id: id ?? this.id,
  title: title ?? this.title,
  content: content ?? this.content,
  image: image ?? this.image,
  date: date ?? this.date,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['content'] = content;
    map['image'] = image;
    map['date'] = date;
    return map;
  }

}

class SuccessStories {
  SuccessStories({
      this.id, 
      this.clientName, 
      this.subtitle, 
      this.content, 
      this.image, 
      this.date,});

  SuccessStories.fromJson(dynamic json) {
    id = json['id'];
    clientName = json['client_name'];
    subtitle = json['subtitle'];
    content = json['content'];
    image = json['image'];
    date = json['date'];
  }
  num? id;
  String? clientName;
  String? subtitle;
  String? content;
  String? image;
  String? date;
SuccessStories copyWith({  num? id,
  String? clientName,
  String? subtitle,
  String? content,
  String? image,
  String? date,
}) => SuccessStories(  id: id ?? this.id,
  clientName: clientName ?? this.clientName,
  subtitle: subtitle ?? this.subtitle,
  content: content ?? this.content,
  image: image ?? this.image,
  date: date ?? this.date,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['client_name'] = clientName;
    map['subtitle'] = subtitle;
    map['content'] = content;
    map['image'] = image;
    map['date'] = date;
    return map;
  }

}

class NewsFeeds {
  NewsFeeds({
      this.id, 
      this.title, 
      this.subtitle, 
      this.content, 
      this.likesCount, 
      this.likesCountAbbreviate, 
      this.commentsCount, 
      this.isLiked, 
      this.reaction, 
      this.type, 
      this.media, 
      this.challengeMedia, 
      this.date, 
      this.time, 
      this.utc, 
      this.ready, 
      this.clientTag, 
      this.clientTagColor,});

  NewsFeeds.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    content = json['content'];
    likesCount = json['likes_count'];
    likesCountAbbreviate = json['likes_count_abbreviate'];
    commentsCount = json['comments_count'];
    isLiked = json['is_liked'];
    reaction = json['reaction'];
    type = json['type'];
    media = json['media'] != null ? Media.fromJson(json['media']) : null;
    date = json['date'];
    time = json['time'];
    utc = json['utc'];
    ready = json['ready'];
    clientTag = json['client_tag'];
    clientTagColor = json['client_tag_color'];
  }
  num? id;
  String? title;
  dynamic subtitle;
  String? content;
  num? likesCount;
  num? likesCountAbbreviate;
  num? commentsCount;
  bool? isLiked;
  dynamic reaction;
  String? type;
  Media? media;
  List<dynamic>? challengeMedia;
  String? date;
  String? time;
  String? utc;
  bool? ready;
  String? clientTag;
  String? clientTagColor;
NewsFeeds copyWith({  num? id,
  String? title,
  dynamic subtitle,
  String? content,
  num? likesCount,
  num? likesCountAbbreviate,
  num? commentsCount,
  bool? isLiked,
  dynamic reaction,
  String? type,
  Media? media,
  List<dynamic>? challengeMedia,
  String? date,
  String? time,
  String? utc,
  bool? ready,
  String? clientTag,
  String? clientTagColor,
}) => NewsFeeds(  id: id ?? this.id,
  title: title ?? this.title,
  subtitle: subtitle ?? this.subtitle,
  content: content ?? this.content,
  likesCount: likesCount ?? this.likesCount,
  likesCountAbbreviate: likesCountAbbreviate ?? this.likesCountAbbreviate,
  commentsCount: commentsCount ?? this.commentsCount,
  isLiked: isLiked ?? this.isLiked,
  reaction: reaction ?? this.reaction,
  type: type ?? this.type,
  media: media ?? this.media,
  challengeMedia: challengeMedia ?? this.challengeMedia,
  date: date ?? this.date,
  time: time ?? this.time,
  utc: utc ?? this.utc,
  ready: ready ?? this.ready,
  clientTag: clientTag ?? this.clientTag,
  clientTagColor: clientTagColor ?? this.clientTagColor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['content'] = content;
    map['likes_count'] = likesCount;
    map['likes_count_abbreviate'] = likesCountAbbreviate;
    map['comments_count'] = commentsCount;
    map['is_liked'] = isLiked;
    map['reaction'] = reaction;
    map['type'] = type;
    if (media != null) {
      map['media'] = media?.toJson();
    }
    if (challengeMedia != null) {
      map['challenge_media'] = challengeMedia?.map((v) => v.toJson()).toList();
    }
    map['date'] = date;
    map['time'] = time;
    map['utc'] = utc;
    map['ready'] = ready;
    map['client_tag'] = clientTag;
    map['client_tag_color'] = clientTagColor;
    return map;
  }

}

class Media {
  Media({
      this.thumbnail, 
      this.url, 
      this.length, 
      this.seconds,});

  Media.fromJson(dynamic json) {
    thumbnail = json['thumbnail'];
    url = json['url'];
    length = json['length'];
    seconds = json['seconds'];
  }
  String? thumbnail;
  String? url;
  String? length;
  String? seconds;
Media copyWith({  String? thumbnail,
  String? url,
  String? length,
  String? seconds,
}) => Media(  thumbnail: thumbnail ?? this.thumbnail,
  url: url ?? this.url,
  length: length ?? this.length,
  seconds: seconds ?? this.seconds,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['thumbnail'] = thumbnail;
    map['url'] = url;
    map['length'] = length;
    map['seconds'] = seconds;
    return map;
  }

}

class Sliders {
  Sliders({
      this.id, 
      this.title, 
      this.buttonText, 
      this.name, 
      this.description, 
      this.type, 
      this.modelId, 
      this.externalLink, 
      this.media,});

  Sliders.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    buttonText = json['button_text'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    modelId = json['model_id'];
    externalLink = json['external_link'];
    media = json['media'] != null ? Media.fromJson(json['media']) : null;
  }
  num? id;
  String? title;
  String? buttonText;
  String? name;
  String? description;
  String? type;
  dynamic modelId;
  dynamic externalLink;
  Media? media;
Sliders copyWith({  num? id,
  String? title,
  String? buttonText,
  String? name,
  String? description,
  String? type,
  dynamic modelId,
  dynamic externalLink,
  Media? media,
}) => Sliders(  id: id ?? this.id,
  title: title ?? this.title,
  buttonText: buttonText ?? this.buttonText,
  name: name ?? this.name,
  description: description ?? this.description,
  type: type ?? this.type,
  modelId: modelId ?? this.modelId,
  externalLink: externalLink ?? this.externalLink,
  media: media ?? this.media,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['button_text'] = buttonText;
    map['name'] = name;
    map['description'] = description;
    map['type'] = type;
    map['model_id'] = modelId;
    map['external_link'] = externalLink;
    if (media != null) {
      map['media'] = media?.toJson();
    }
    return map;
  }

}

class Referrals {
  Referrals({
      this.count, 
      this.subscribed,});

  Referrals.fromJson(dynamic json) {
    count = json['count'];
    subscribed = json['subscribed'];
  }
  num? count;
  num? subscribed;
Referrals copyWith({  num? count,
  num? subscribed,
}) => Referrals(  count: count ?? this.count,
  subscribed: subscribed ?? this.subscribed,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['subscribed'] = subscribed;
    return map;
  }

}