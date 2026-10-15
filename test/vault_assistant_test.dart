import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pharmd_vault_website/core/widgets/vault_assistant.dart';

void main() {
  testWidgets('Buddy opens, answers a question and closes on mobile', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      const MaterialApp(
        home: VaultAssistant(child: Scaffold(body: Text('Site content'))),
      ),
    );
    expect(find.text('Vault Buddy'), findsNothing);
    await tester.tap(find.text('Ask Buddy'));
    await tester.pumpAndSettle();
    expect(find.text('Vault Buddy'), findsOneWidget);
    await tester.tap(find.text('Is anatomy free?'));
    await tester.pumpAndSettle();
    expect(find.textContaining('no login or payment required'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byTooltip('Close assistant'));
    await tester.pumpAndSettle();
    expect(find.text('Vault Buddy'), findsNothing);
  });
}
