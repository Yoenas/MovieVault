import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class SearchBox extends ConsumerStatefulWidget {
  const SearchBox({super.key});

  @override
  ConsumerState<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends ConsumerState<SearchBox> {
  late final _searchController = TextEditingController();
  static const double _radius = 25;
  bool _isBoxFilled = true; // show x button to clear 'Pirates Caribbean'
  final FocusNode nodeSearch = FocusNode();

  @override
  void initState() {
    super.initState();
    _searchController.text = ref.read(
        searchQueryProvider); // initial textfield value 'Pirates Caribbean'
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _radius * 2,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(left: 12, right: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_radius),
        border: const Border(
          left: BorderSide(width: 1, color: MyColors.lineLight),
          top: BorderSide(width: 1, color: MyColors.lineLight),
          right: BorderSide(width: 1, color: MyColors.lineLight),
          bottom: BorderSide(width: 1, color: MyColors.lineLight),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/svg/bottom_nav/ic_search.svg'),
          Expanded(
            child: TextField(
              // autofocus: true,
              focusNode: nodeSearch,
              style: textThemeUtil(context)
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                hintText: 'Search...',
                hintStyle: mHintStyle,
              ),
              textInputAction: TextInputAction.search,
              controller: _searchController,
              onChanged: (value) {
                if (_searchController.text.trim() != '' ||
                    _searchController.text.isNotEmpty) {
                  setState(() {
                    _isBoxFilled = true; // shows x icon
                  });
                } else {
                  setState(() {
                    _isBoxFilled = false; // removes x icno
                  });
                }
              },
              onSubmitted: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
            ),
          ),
          IconButton(
            onPressed: () {
              _searchController.text = '';
              FocusScope.of(context).requestFocus(nodeSearch);
              setState(() {
                _isBoxFilled = false; // removes x icno
              });
            },
            icon: _isBoxFilled ? Icon(Icons.clear_rounded) : SizedBox.shrink(),
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius),
                  bottomRight: Radius.circular(_radius),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'search',
                  style: textThemeUtil(context)
                      .bodyMedium
                      ?.copyWith(color: MyColors.white, letterSpacing: 1.2),
                ),
              ),
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
              ref.read(searchQueryProvider.notifier).state =
                  _searchController.text;
            },
          )
        ],
      ),
    );
  }
}
