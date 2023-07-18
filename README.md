# destini_flutter

A Flutter project that allows users to choose how the story progresses.


## Display Effects

<img src="https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/destini.gif" alt="DiceApp" width=150 height="334">

## Summary

This only summarizes the problems encountered for the first time through this project.
### set an assets image as a background of the app

```Dart
Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/image.jpg'),  // Replace "image.jpg" with the actual file name and extension of your image
      fit: BoxFit.cover,  // Adjust the fit as per your needs
    ),
  ),
  child: YourWidget(),  // Add your other widgets or UI elements here
)

```

- The `image` property of the `BoxDecoration` only supports the `DecorationImage` widget and does not support `ImageProvider` widgets like `AssetsImage` or `NetworkImage`.
- Need to prevent some issues like if there're a `TextField` widget over the background image, then opening a keyboard resizes the image. The solution of this problem is that you need to take the `Container` outside the `Scaffold` widget. ![image-20230717181037732](https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/image-20230717181037732.png)
- To make the background image visible, you have to use the property `backgroundcolor: Colors.transparent` of the `Scaffold`. `transparent` represents a fully transparent color, which means it is completely invisible, having an alpha value of 0. When you use `Colors.transparent` in your Flutter app, it means you want to make something transparent or invisible, such as the background color of a widget or any part of the UI that you want to hide.


### Visibility class
In this project, we need to use the `Visibility` widget to wrap the blue button, in order to control when the button should be visible.

```Dart
Visibility(
	visible: false,
    child: TextButton(
        onPressed: () {},
        child: Text('hello'),
    ),
)
```




