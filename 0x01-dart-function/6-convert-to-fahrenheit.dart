List<double> convertToF(List<double> temperaturesInC){
    return temperaturesInC.map(((c) => (c * 9 / 5 + 32)).toList().map((e) => double.parse(e.toStringAsFixed(2))).toList();
}