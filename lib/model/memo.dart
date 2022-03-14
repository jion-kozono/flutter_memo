class Memo {
  late String title;
  late String detail;
  late DateTime? createdTime;
  late DateTime? updatedTime;

  Memo(
      {required this.title,
      required this.detail,
      this.createdTime,
      this.updatedTime});
}
