[Exposed=Window]
interface CallbackAttributes {
  attribute Function function;
  attribute VoidFunction voidFunction;
  attribute URLCallback urlCallback;
  attribute URLHandler urlHandler;
  attribute URLHandlerNonNull urlHandlerNonNull;
};
