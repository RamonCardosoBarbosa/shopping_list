abstract class ListBooksState {
  const ListBooksState();
}

class ListBooksInitial extends ListBooksState {
  const ListBooksInitial();
}

class ListBooksLoadInProgress extends ListBooksState {
  const ListBooksLoadInProgress();
}

class ListBooksLoadFailure extends ListBooksState {
  const ListBooksLoadFailure();
}
