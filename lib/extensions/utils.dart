double toDoubleorInfinite(dynamic str) {
  if (str is double) return str;
  return (str == 'Infinite') ? double.infinity : double.parse(str);
}

extension NumExt on num {
  toDouble() {
    return (this is int) ? this.toDouble() : this;
  }
}
