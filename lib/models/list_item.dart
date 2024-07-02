class ListItem {
  final String assetUrl;
  final String title;
  final String subtitle;
  final String trailing;

  ListItem({
    required this.assetUrl,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
}

final List<ListItem> items = [
  ListItem(
    assetUrl: 'assets/images/ai_assistant.png',
    title: 'AI Assistant',
    subtitle: 'Ask me anything.',
    trailing: '12:02 pm',
  ),
  ListItem(
    assetUrl: 'assets/cult_fit_logo.png',
    title: 'Cult.Fit',
    subtitle: 'When to start the course',
    trailing: '12:02 pm',
  ),
  ListItem(
    assetUrl: 'assets/images/mr_anil_kumar.png',
    title: 'Mr. Anil Kumar',
    subtitle: 'Can you suggest me some medicat...',
    trailing: '12:02 pm',
  ),
];
