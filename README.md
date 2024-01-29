# Mobile-Development

This project was created for the Mobile Development course. The goal is to create a mobile application for iOS that can be used to assist visitors during an upcoming security conference. The conference spans two days and includes various talks and activities distributed across multiple rooms. The aim of the application is to simplify the visitor's journey by providing them with the schedule and essential information on their mobile devices.

Here is a report that explains how to make the application work and how it was developed.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
To run the application, you need to have the following installed on your machine:
* [Xcode](https://developer.apple.com/xcode/) (for iOS)

### Installing
To install the application, you need to clone the [repository](https://github.com/RomainMarques/Mobile-Development) on your machine.


### Running the tests
*Tests are not implemented yet*


## How it works

The project was made using the [Swift](https://developer.apple.com/swift/) programming language and the [Xcode](https://developer.apple.com/xcode/) IDE. The application is compatible with iOS 16.0 and later.
*\*Note: before 17.0, think to remove all #Preview in the code*

### Architecture

We separate between Model, Resources, View and ViewModel. This is a variation of the Model-View-ViewModel (MVVM) architecture, which is a software architectural pattern that facilitates a separation of the development of the graphical user interface from the business logic or back-end logic (the data model).

In this context:
- The **Model** contains the definitions of the data structures that are used in the application. We have two models: activity (information about a talk or workshop) and contributor (information about a speaker or workshop leader).
- The **Resources** used to communicate with the API data base and retrieve the data.
- The **View** contains all pages that are used in the application. We have two major views: the activities view (contains the schedule) and the contributors view (contains the list of contributors). Each major view has a corresponding view model.
- The **ViewModel** responsible for retrieving the data from the models and providing it to the views.

The entry point is the `Mobile_devlopmentApp.swift` file, responsible for creating the initial view `ContentView.swift` of the application. Here is a tree representation of the project:

```
├── Mobile_devlopmentApp.swift
├── Model
│   ├── Activity.swift
│   └── Contributor.swift
├── Preview Content
│   └── Preview Assets.xcassets
│       └── Contents.json
├── Resources
│   ├── GetScheduleList.swift
│   ├── GetSpeakerList.swift
│   ├── ScheduleFetch.swift
│   └── SpeakerFetch.swift
├── View
│   ├── ActivitiesView.swift
│   ├── ActivityView.swift
│   ├── ContentView.swift
│   ├── ContributorView.swift
│   ├── ContributorsView.swift
│   ├── ListActivitytRow.swift
│   └── ListContributorRow.swift
└── ViewModel
    ├── ViewModelActivity.swift
    └── ViewModelContributor.swift
```

We declared all the tasks to do in GitHub Projects tab.

You can find the project's tasks [here](https://github.com/users/RomainMarques/projects/2/views/1).

### Bonus Parts

We created a logo for our app and changed its category to "Utility".
Moreover, we added a security in the branch main of GitHub. It is necessary to be approved by at least one person.
We declared also our tasks in GitHub Projects tab.

### Conclusion

This project was a great opportunity to learn more about mobile development and the Swift programming language. We have learned a lot about the MVVM architecture and how to use it to develop an iOS application. We have also learned how to use the SwiftUI framework to create the user interface of the application.

## Authors
* **[Romain Marques](https://github.com/RomainMarques)** 
* **[Antoine Lachaud](https://github.com/anto-lcd)**
* **[Vincent Marguet](https://github.com/Fefoler01)**
