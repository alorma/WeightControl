class WeightValue {
  final double weight;
  final DateTime date;

  const WeightValue(this.weight, this.date);

  String getWeight() => weight.toString();

  String getDate() =>
      date.hour.toString() +
      ":" +
      date.minute.toString() +
      " - " +
      date.day.toString() +
      "/" +
      date.month.toString() +
      "/" +
      date.year.toString();
}
