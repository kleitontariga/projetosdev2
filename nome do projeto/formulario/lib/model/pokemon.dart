class Pokemon {
  String? _nome;
  String? _tipo;
  int? _tipoSec;
  bool? _magico, _fisico, _raro;

  Pokemon(this._nome, this._tipo, this._tipoSec, this._magico, this._fisico,
      this._raro);

  @override
  String toString() {
    return "Nome: $_nome\nTipo: $_tipo e $_tipoSec\n" +
        "Mágico: $_magico\nFísico: $_fisico\nRaro: $_raro";
  }
}
