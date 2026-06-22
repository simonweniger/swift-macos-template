# Sidebar App

A modern macOS SwiftUI template targeting **macOS Tahoe (macOS 26)** with **Swift 6** and **Xcode 26**.

## License

This app is released into the public domain under The Unlicense. See LICENSE file for more information.

## Overview

This is a Github template repository that you can create your new repository from by clicking the big green "Use this template" button on Github.

![Sidebar App](https://user-images.githubusercontent.com/384210/169694882-42e7bb8c-c576-42a8-a6ac-bb2794c76f95.png)

What you get is an Xcode project with boilerplate code for a modern SwiftUI macOS app with these features already set up:

- **NavigationSplitView** sidebar with selection-driven detail panes and Liquid Glass design.
- **MenuBarExtra** scene for a native SwiftUI menu bar button.
- A sidebar search box and detail view pane-specific search in the window toolbar.
- A detail view pane with an example drop target for dropping files onto the window.
- A custom **About** window and **Attributions** window using SwiftUI `Window` scenes.
- A menu option for toggling whether the window should always float on top of other windows.
- A custom menu for arbitrary menu options.
- An Export menu option replacement.
- A tabbed settings window using the modern **Tab** API.

## Modern SwiftUI Patterns

This template uses current best practices:

- `NavigationSplitView` instead of the deprecated `NavigationView`
- `#Preview` macro instead of `PreviewProvider`
- `MenuBarExtra` scene instead of manual `NSStatusItem`
- SwiftUI `Window` scenes instead of `NSWindowController`
- Modern `Tab` API instead of deprecated `tabItem()`
- `dropDestination(for:)` instead of a manual `DropDelegate`/`NSItemProvider`
- Swift 6 with strict concurrency checking
- macOS 26 deployment target for Liquid Glass and latest APIs
