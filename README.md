# Foodics
# Elmenus Task

Project written in Swift 5 code built using the MVVM design pattern ,A simple app that connects to elmenus mock API to display
a list of tags and menu items for each tag

![](splach.png)



### Prerequisites

Xcode 10.2
Swift 5


### Installing

Clone the porject.
Navigate to project folder in terminal.
install cocoapods

## Built With

* [Moya ]() - network layer
* [reachability ]() - network layer
* [hero]() - animation
* [Kingfisher]() - cashe image
* [nimblie and quick]() - unit test
please check testing Coverage 
![](Screen.png)
### main Layers

Project written in Swift 5 code built using the MVVM

ViewModel - view - model - Network Layer - Caching - Coordinators

### Architecture:
MVVM design pattern :

Model is a class that declares properties for managing business data

View is represented by the UIView or UIViewController objects, accompanied with their .xib and .storyboard files, which should only display prepared data.

ViewModel The viewModel is at the heart of the MVVM design pattern and provides the connection between the business logic and the view/view controller. The view (UI) responds to user input by passing input data (defined by the model) to the viewModel. In turn, the viewModel evaluates the input data and responds with an appropriate UI presentation according business logic workflow.

### Features:
Fetch list of tags from mock api

Fetch list of items based on tag name from mock api

cache the API response and display it in offline mode.
