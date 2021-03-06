import 'package:flutter/material.dart';

const _tabletSpacingVertical = 12.0;
const _tabletSpacingHorizontial = 10.0;

class AccountNavRail extends StatefulWidget {
  final Widget drawerHeader;
  final FloatingActionButton floatingActionButton;
  final ValueChanged<int> onPressed;
  final int currentIndex;
  final Widget body;
  final Widget title;
  final List<TabItem> tabs;
  final WidgetBuilder drawerHeaderBuilder, drawerFooterBuilder;
  final Color bottomNavigationBarColor;
  final double tabletBreakpoint, desktopBreakpoint, minHeight, drawerWidth;
  final List<Widget> actions;
  final BottomNavigationBarType bottomNavigationBarType;
  final Color bottomNavigationBarSelectedColor,
      bottomNavigationBarUnselectedColor;
  final bool isDense;

  AccountNavRail(
      {Key key,
      this.floatingActionButton,
      this.body,
      this.title,
      @required this.currentIndex,
      @required this.tabs,
      @required this.onPressed,
      this.drawerHeaderBuilder,
      this.drawerFooterBuilder,
      this.bottomNavigationBarColor,
      this.tabletBreakpoint = 768.0,
      this.desktopBreakpoint = 1400,
      this.minHeight = 400.0,
      this.drawerWidth = 400.0,
      this.actions,
      this.bottomNavigationBarType,
      this.bottomNavigationBarSelectedColor,
      this.bottomNavigationBarUnselectedColor,
      this.isDense = false,
      this.drawerHeader})
      : super(key: key);

  @override
  _AccountNavRailState createState() => _AccountNavRailState();
}

class _AccountNavRailState extends State<AccountNavRail> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Directionality.of(context),
      child: LayoutBuilder(builder: (context, dimens) {
        final _direction = Directionality.of(context);
        final isRtl = _direction == TextDirection.rtl;

        //DESKTOP
        if (dimens.maxWidth >= this.widget.desktopBreakpoint &&
            dimens.maxHeight > this.widget.minHeight) {
          return Material(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildDrawer(context, true),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned.fill(
                        child: Scaffold(body: widget.body),
                      ),
                      if (this.widget.floatingActionButton != null) ...[
                        Positioned(
                          top: kToolbarHeight - kToolbarHeight / 2,
                          right: isRtl ? null : kToolbarHeight / 2,
                          left: !isRtl ? null : kToolbarHeight / 2,
                          child: widget.floatingActionButton,
                          width: 50,
                          height: 50,
                        )
                      ]
                    ],
                  ),
                )
              ],
            ),
          );
        }

        /// TABLET
        if (dimens.maxWidth >= this.widget.tabletBreakpoint &&
            dimens.maxHeight > this.widget.minHeight) {
          return Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      if (this.widget.floatingActionButton != null) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: _tabletSpacingVertical,
                            horizontal: _tabletSpacingHorizontial,
                          ),
                          child: widget.floatingActionButton,
                        )
                      ],
                      for (var tab in this.widget.tabs) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: _tabletSpacingVertical,
                            horizontal: _tabletSpacingHorizontial,
                          ),
                          child: Container(
                            height: 95,
                            child: _buildTab(
                              selected: (widget.currentIndex ==
                                  this.widget.tabs.indexOf(tab)),
                              context: context,
                              item: tab,
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
                Expanded(
                  child: widget.body ?? Container(),
                ),
              ],
            ),
          );
        }

        /// PHONE / MOBILE
        return Scaffold(
          body: widget.body,
          floatingActionButton: widget.floatingActionButton,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      for (var tab in this.widget.tabs) ...[
                        InkWell(
                          onTap: () {
                            widget.onPressed(widget.tabs.indexOf(tab));
                            tab.onTap();
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconTheme(
                                  data: IconThemeData(
                                    color: (widget.currentIndex ==
                                            widget.tabs.indexOf(tab))
                                        ? widget
                                            .bottomNavigationBarSelectedColor
                                        : widget
                                            .bottomNavigationBarUnselectedColor,
                                  ),
                                  child: tab.icon,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildDrawer(BuildContext context, bool showTabs) {
    // got the specs from here: https://material.io/components/lists#specs
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (widget.drawerHeader != null) ...[widget.drawerHeader],
              if (widget.drawerHeaderBuilder != null) ...[
                widget.drawerHeaderBuilder(context),
              ],
              if (showTabs) ...[
                for (var tab in widget.tabs) ...[
                  InkWell(
                    child: Container(
                      height: 56,
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          //logic taken from ListTile
                          IconTheme.merge(
                              data: IconThemeData(
                                  color: (widget.currentIndex !=
                                          widget.tabs.indexOf(tab)
                                      ? Theme.of(context).disabledColor
                                      : Theme.of(context).accentColor)),
                              child: tab?.icon),
                          SizedBox(width: 16),
                          //logic taken from ListTile
                          DefaultTextStyle(
                            child: tab?.title,
                            style: Theme.of(context).textTheme.bodyText2.merge(
                                  TextStyle(
                                    color: (widget.currentIndex !=
                                            widget.tabs.indexOf(tab)
                                        ? Theme.of(context).disabledColor
                                        : Theme.of(context).accentColor),
                                  ),
                                ),
                          ),
                          SizedBox(width: 40),
                        ],
                      ),
                    ),
                    onTap: () {
                      widget.onPressed(widget.tabs.indexOf(tab));
                      tab.onTap();
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab({
    bool selected,
    BuildContext context,
    TabItem item,
  }) {
    final _theme = Theme.of(context);
    final _isDark = _theme.brightness == Brightness.dark;
    final _color = selected
        ? _isDark
            ? Colors.tealAccent[200]
            : _theme.primaryColor
        : Colors.grey;

    final _iconTheme = IconThemeData(
      color: _color,
      size: _theme.iconTheme.size,
      opacity: _theme.iconTheme.opacity,
    );

    final _icon = Align(
      alignment: Alignment.topCenter,
      heightFactor: 1.0,
      child: IconTheme(
        data: _iconTheme,
        child: item.icon,
      ),
    );

    if (widget.isDense) {
      return IconButton(
        onPressed: () {
          widget.onPressed(widget.tabs.indexOf(item));
          item.onTap();
        },
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _icon,
        ),
      );
    }
    return IconButton(
      iconSize: 60,
      onPressed: () {
        widget.onPressed(widget.tabs.indexOf(item));
        item.onTap();
      },
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          Container(height: 4.0),
          DefaultTextStyle(
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: _color),
            child: item?.title,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final Text title;
  final Widget icon;
  final Function onTap;

  const TabItem({
    Key key,
    @required this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return icon;
  }
}
