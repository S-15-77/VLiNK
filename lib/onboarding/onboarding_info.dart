class OnboardingReq {
  final title;
  final titleStyle;
  final images;
  final imageheight;
  final imagewidth;
  final subTitle;
  final subTitleStyle;
  final body;
  final bodystyle;

  OnboardingReq(
      {this.imagewidth,
      this.titleStyle,
      this.imageheight,
      this.subTitleStyle,
      this.bodystyle,
      this.title,
      this.body,
      this.images,
      this.subTitle});
}
