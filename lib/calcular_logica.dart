import 'package:expressions/expressions.dart';

class LogicaCalculadora {
  String _expressao = '';
  String _resultado = '0';
  String _operacaoAnterior = '';
  String _resultadoAnterior = '';

  String get expressao => _expressao;

  String get resultado => _resultado;

  String get operacaoAnterior => _operacaoAnterior;

  String get resultadoAnterior => _resultadoAnterior;

  void aoPressionarBotao(String valor) {
    switch (valor) {
      case 'C':
        _limpar();
        break;
      case '=':
        _calcularResultado();
        break;
      case 'delete':
        _deletarUltimoCaracter();
        break;
      case '+/-':
        _alternarSinal();
        break;
      case '%':
        _aplicarPorcentagem();
        break;
      default:
        _adicionarAExpressao(valor);
    }
  }

  void _limpar() {
    _expressao = '';
    _resultado = '0';
    _operacaoAnterior = '';
    _resultadoAnterior = '';
  }

  void _calcularResultado() {
    try {
      _operacaoAnterior = _expressao;
      _resultadoAnterior = _resultado;

      if (_expressao.contains('÷0') || _expressao.contains('/0')) {
        throw Exception('Divisão por zero não permitida');
      }

      String expressaoFormatada = _processarPorcentagens(_expressao);
      expressaoFormatada =
          expressaoFormatada.replaceAll('x', '*').replaceAll('÷', '/');
      final expressao = Expression.parse(expressaoFormatada);
      const avaliador = ExpressionEvaluator();
      var resultadoAvaliacao = avaliador.eval(expressao, {});

      _resultado = resultadoAvaliacao.toString();
      _expressao = _resultado;
    } catch (e) {
      _resultado = e.toString().contains('Divisão por zero')
          ? 'Operação inválida'
          : 'Operação invalída';
    }
  }

  String _processarPorcentagens(String expressao) {
    final regex = RegExp(r'(\d+(\.\d+)?)(\s*[-+*/]\s*)(\d+(\.\d+)?%)');

    String resultado = expressao.replaceAllMapped(regex, (match) {
      final numeroAntesOperador = double.parse(match.group(1)!);
      final operador = match.group(3)!;
      final numeroPorcentagem =
          double.parse(match.group(4)!.replaceAll('%', ''));

      final valorPorcentagem = numeroAntesOperador * (numeroPorcentagem / 100);

      return '$numeroAntesOperador $operador $valorPorcentagem';
    });

    return resultado;
  }

  void _deletarUltimoCaracter() {
    if (_expressao.isNotEmpty) {
      _expressao = _expressao.substring(0, _expressao.length - 1);
      _resultado = _expressao;
    }
  }

  void _alternarSinal() {
    if (_expressao.isNotEmpty) {
      if (_expressao.startsWith('-')) {
        _expressao = _expressao.substring(1);
      } else {
        _expressao = '-$_expressao';
      }
      _resultado = _expressao;
    }
  }

  void _aplicarPorcentagem() {
    if (_expressao.isNotEmpty) {
      _expressao += '%';
      _resultado = _expressao;
    }
  }

  void _adicionarAExpressao(String valor) {
    _expressao += valor;
    _resultado = _expressao;
  }
}
