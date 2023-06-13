// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:counter_riverpod/src/common_widgets/common_padding.dart';
import 'package:counter_riverpod/src/features/setting/widgets/info_list_tile_widget.dart';
import 'package:counter_riverpod/src/features/setting/widgets/theme_list_tile_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: CommonPadding(
        child: ListView(
          children: const <Widget>[
            ThemeListTileWidget(),
            InfoListTileWidget(),
          ],
        ),
      ),
    );
  }
}
