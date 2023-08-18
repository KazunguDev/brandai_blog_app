class postDataModel {

  // Data types
  String ? title;
  String ? description;
  String ? keywords;
  String ? activeCategory;
  int ? pageOffset;
  int ? perPage;
  int ? currentPage;
  List<Posts> ? posts;

 // Constructor
  postDataModel(
      {this.title,
        this.description,
        this.keywords,
        this.activeCategory,
        this.pageOffset,
        this.perPage,
        this.currentPage,
        this.posts});

  //method that assign values to respective datatype variables
  postDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    activeCategory = json['active_category'];
    pageOffset = json['page_offset'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    if (json['posts'] != null) {
      posts = List<Posts>.empty();
      json['posts'].forEach((v) {
        posts?.add(new Posts.fromJson(v));
      });
    }
  }

  get imageSmall => imageSmall;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['keywords'] = this.keywords;
    data['active_category'] = this.activeCategory;
    data['page_offset'] = this.pageOffset;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    if (this.posts != null) {
      data['posts'] = this.posts?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String ? id;
  String ? title;
  String ? slug;
  String ? keywords;
  String ? categoryId;
  String ? imageDefault;
  String ? imageSmall;
  String ? createdAt;
  String ? categoryName;
  String ? categorySlug;

  Posts(
      {this.id,
        this.title,
        this.slug,
        this.keywords,
        this.categoryId,
        this.imageDefault,
        this.imageSmall,
        this.createdAt,
        this.categoryName,
        this.categorySlug});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    keywords = json['keywords'];
    categoryId = json['category_id'];
    imageDefault = json['image_default'];
    imageSmall = json['image_small'];
    createdAt = json['created_at'];
    categoryName = json['category_name'];
    categorySlug = json['category_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['keywords'] = this.keywords;
    data['category_id'] = this.categoryId;
    data['image_default'] = this.imageDefault;
    data['image_small'] = this.imageSmall;
    data['created_at'] = this.createdAt;
    data['category_name'] = this.categoryName;
    data['category_slug'] = this.categorySlug;
    return data;
  }
}
