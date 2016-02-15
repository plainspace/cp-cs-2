# Week 1 Project: Carousel
_Due:_ Sunday, February 14th at 11:59pm  
_Time spent:_ 14 hrs

## Overview
The purpose of this homework is to leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. We're going to use the techniques from this week to implement the Carousel app from the signed out state to the basic signed in state.

## Project Requirements

- [x] Static photo tiles on the initial screen
  - [x] Optional: Photo tiles move with scrolling
- [x] Sign In
  - [x] Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
  - [x] Upon tapping the Sign In button.
    - [x] If the username or password fields are empty, user sees an error alert.
    - [x] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
    - [x] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Tutorial screens.
  - [x] Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.
  - [x] Optional: On appear, scale the form up and fade it in.
- [x] Optional: Create a Dropbox
  - [x] Optional: Tapping in the first name, last name, email or password fields reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
  - [x] Optional: Tapping the Agree to Terms checkbox selects the checkbox.
  - [x] Optional: Tapping on Terms shows a webview with the terms.
  - [x] Upon tapping the Create a Dropbox button.
    - [x] If the any of the fields are empty, user sees an error alert.
    - [x] If the fields are not empy, user sees a loading indicator for 2 seconds followed by a transition to the Tutorial screens.
  - [x] Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.
  - [x] Optional: On appear, scale the form up and fade it in.
  - [x] Optional: User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
- [x] Tutorial Screens
  - [x] User can page between the screens
  - [x] Optional: User can page between the screens with updated dots
  - [x] Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
- [x] Image Timeline
  - [x] Display a scrollable view of images.
  - [x] User can tap on the conversations button to see the conversations screen (push).
  - [x] User can tap on the profile image to see the settings view (modal from below).
- [x] Conversations
  - [x] User can dismiss the conversations screen
- [x] Settings
  - [x] User can dismiss the settings screen.
  - [x] User can log out
- [ ] Optional: Learn more about Carousel
  - [x] Optional: Show the "Learn more about Carousel" button in the photo timeline.
  - [x] Optional: Tap the X to dismiss the banner
  - [ ] Optional: Track the 3 events:
    - [ ] View a photo full screen
    - [ ] Swipe left and right
    - [ ] Share a photo
  - [ ] Optional: Upon completion of the events, mark them green.
  - [ ] Optional: When all events are completed, dismiss the banner.

## GIF

Walkthrough of requirements and optionals:

![Video Walkthrough](db-1.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).
