[Exposed=Window]
interface NonJSIdentifierInterface {
  static void non-js-identifier-static-function();
  static attribute any non-js-identifier-static-attribute;

  void non-js-identifier-function();
  attribute any non-js-identifier-attribute;

  [LegacyUnforgeable] void non-js-identifier-unforgeable-function();
  [LegacyUnforgeable] attribute any non-js-identifier-unforgeable-attribute;

  getter any get-named(DOMString name);
  setter void set-named(DOMString name, any value);
  deleter void delete-named(DOMString name);

  getter any get-indexed(unsigned long name);
  setter void set-indexed(unsigned long name, any value);
};
