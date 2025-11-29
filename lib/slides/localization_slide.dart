import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- You can localize your slide deck using the same approach as any other Flutter app.
- Use deck controls to change the locale and see the text change without restarting your presentation!
''';

class LocalizationSlide extends FlutterDeckSlideWidget {
  const LocalizationSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/localization',
          speakerNotes: _speakerNotes,
          header: FlutterDeckHeaderConfiguration(
            title: 'Slide deck localization',
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "'Hello World!",
              style: FlutterDeckTheme.of(context).textTheme.display,
            ),
            const SizedBox(height: 32),
            Text(
              'Current locale: not used',
              style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'It is possible to localize your slide deck using the same '
              'approach as any other Flutter app.\nUse deck controls to change '
              'the locale and see the text change without restarting your '
              'presentation!',
              style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
