class UnbordingContent {
  String image;
  String title;
  String content;

  UnbordingContent(
      {required this.image, required this.title, required this.content});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Invest in High-yield CRE',
      image: 'assets/images/slider1.svg',
      content: "Get a stable monthly return and\n build long-term wealth"),
  UnbordingContent(
      title: 'Track Your Portfolio',
      image: 'assets/images/slider2.svg',
      content: "See how your investments are performing.\n anytime, anywhere"),
  UnbordingContent(
      title: 'Get Regular Updates ',
      image: 'assets/images/slider3.svg',
      content: "Get notified on payouts, updates,\n and new opportunities"),
];
