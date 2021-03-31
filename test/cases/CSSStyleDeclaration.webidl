// https://drafts.csswg.org/cssom/#cssomstring
typedef DOMString CSSOMString;

// Simplified from https://drafts.csswg.org/cssom/#cssstyledeclaration
[Exposed=Window]
interface CSSStyleDeclaration {
  [CEReactions] attribute CSSOMString cssText;
  // readonly attribute unsigned long length;
  // getter CSSOMString item(unsigned long index);
  CSSOMString getPropertyValue(CSSOMString property);
  CSSOMString getPropertyPriority(CSSOMString property);
  // [CEReactions] void setProperty(CSSOMString property, [LegacyNullToEmptyString] CSSOMString value, optional [LegacyNullToEmptyString] CSSOMString priority = "");
  // [CEReactions] CSSOMString removeProperty(CSSOMString property);
  // readonly attribute CSSRule? parentRule;
  // [CEReactions] attribute [LegacyNullToEmptyString] CSSOMString cssFloat;
};
