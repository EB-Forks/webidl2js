"use strict";

module.exports.boolean = {
  get(objName, attrName) {
    return `return this[implSymbol].hasAttributeNS(null, "${attrName}");`;
  },
  set(objName, attrName) {
    return `
      if (V) {
        this[implSymbol].setAttributeNS(null, "${attrName}", "");
      } else {
        this[implSymbol].removeAttributeNS(null, "${attrName}");
      }
    `;
  }
};

module.exports.DOMString = {
  get(objName, attrName) {
    return `
      const value = this[implSymbol].getAttributeNS(null, "${attrName}");
      return value === null ? "" : value;
    `;
  },
  set(objName, attrName) {
    return `this[implSymbol].setAttributeNS(null, "${attrName}", V);`;
  }
};

module.exports.long = {
  get(objName, attrName) {
    return `
      const value = parseInt(this[implSymbol].getAttributeNS(null, "${attrName}"));
      return isNaN(value) || value < -2147483648 || value > 2147483647 ? 0 : value
    `;
  },
  set(objName, attrName) {
    return `this[implSymbol].setAttributeNS(null, "${attrName}", String(V));`;
  }
};

module.exports["unsigned long"] = {
  get(objName, attrName) {
    return `
      const value = parseInt(this[implSymbol].getAttributeNS(null, "${attrName}"));
      return isNaN(value) || value < 0 || value > 2147483647 ? 0 : value
    `;
  },
  set(objName, attrName) {
    return `this[implSymbol].setAttributeNS(null, "${attrName}", String(V > 2147483647 ? 0 : V));`;
  }
};
