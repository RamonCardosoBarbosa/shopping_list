## Shopping List app

### Installation
- Flutter 3.3.4 - You can to use the [FVM](https://fvm.app/) to install this version with the [fvm files](https://github.com/RamonCardosoBarbosa/shopping_list/tree/master/.fvm).

### This project is a multipackage project with packages and apps.

- The `services` folder contains packages that can be reused by features and apps:
  - The `network` service is responsible to connect with APIs.
  - The `design_system` implements some spsceifc widgets to be centrilized an easier to change for entire applicatication or to do test a/b.
  - The `core` services is used to mantain reusable methods, functions, abstractions and etc.
- The `feature` folder contains all app features that the user can visualize.
  - `list_books` is responsible to display, control state management and API request for list books use cases. 
- The `apps/shopping_list` is a Flutter app with a main file.

### Next Jobs

- This section are the itens that I know how to do but I didn`t have time yet.

- Create a serch books by text on list books
- Create a load more books action  on list books scrool view last item
- Create a details book feature
- Add internationalization
- Add more themes like dark theme
