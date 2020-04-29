// Simplified from https://drafts.fxtf.org/geometry-1/#domrect

[Exposed=(Window,Worker),
 Serializable,
 LegacyWindowAlias=SVGRect]
interface DOMRect /* : DOMRectReadOnly */ {
  constructor(optional unrestricted double x = 0, optional unrestricted double y = 0,
          optional unrestricted double width = 0, optional unrestricted double height = 0);

  [CallWith=globalObject,NewObject] static DOMRect fromRect(optional DOMRectInit other);

  attribute unrestricted double x;
  attribute unrestricted double y;
  attribute unrestricted double width;
  attribute unrestricted double height;
};
