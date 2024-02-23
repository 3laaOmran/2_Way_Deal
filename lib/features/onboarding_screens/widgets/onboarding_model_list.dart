// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnboardingContentModel {
  String image;
  String mainText;
  String smallText;
  OnboardingContentModel({
    required this.image,
    required this.mainText,
    required this.smallText,
  });
}

List<OnboardingContentModel> onboardingContentList = [
  OnboardingContentModel(
    image: 'assets/images/onboarding_one.png',
    mainText: 'High\nQualityFood',
    smallText: ' Carefully selected',
  ),
  OnboardingContentModel(
    image: 'assets/images/onboarding_two.png',
    mainText: 'Clean\nEnvironment',
    smallText: 'Save The planet',
  ),
  OnboardingContentModel(
    image: 'assets/images/onboarding_three.png',
    mainText: 'Reduce\nFood Waste',
    smallText: 'Reducing Famines',
  ),
];
