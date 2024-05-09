import 'package:fitzone/models.dart';
import 'package:fitzone/pages/components/space.dart';
import 'package:fitzone/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final StateManager _stateManager = StateManager();

class Bar extends AppBar {
  Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  static final List<bool> _isThemeSelected = [true, false, false];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppLocalizations.of(context)!.hi,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      actions: [
        ToggleButtons(
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < _isThemeSelected.length; i++) {
                if (i == index) {
                  _isThemeSelected[i] = true;
                  _stateManager.toggleTheme(i);
                } else {
                  _isThemeSelected[i] = false;
                }
              }
            });
          },
          isSelected: _isThemeSelected,
          children: const [
            Icon(Icons.disabled_by_default),
            Icon(Icons.light_mode),
            Icon(Icons.dark_mode),
          ],
        ),
        addHorizontalSpace(context, 10),
        IconButton(
          icon: const Icon(Icons.language),
          onPressed: () => setState(() {
            _stateManager.setLocale(LanguageLocale.arSA);
          }),
        ),
        IconButton(
          icon: const Icon(Icons.abc_rounded),
          onPressed: () => setState(() {
            _stateManager.setLocale(LanguageLocale.enUS);
          }),
        ),
      ],
    );
  }
}
