# example

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)


This package has below options:
List<String> buttonTitles : the titles list that show
void Function(int) onSelected : that return selected index
int selectedIndex : that is starter selected item index the defualt value is 0
int animationDuration : the duration of animation for changing between current selected item and last one
double minWidthOfItem : this is min width of items, the defualt value is 80
double minHeightOfItem : this is min height of items, the defualt value is 40
Color deActiveItemColor : color of deactivated items
Color activeItemColor : color of activeated items
TextStyle activeTextStyle : style of activated item's text
TextStyle deActiveTextStyle: style of de activated item's text
double activeBorderRadius : border radius of active item
double deActiveBorderRadius : border radius of de active item