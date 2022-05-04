import 'package:inicio_do_projeto/ver_aprovacao/calculo_nota.dart' as nota;
import 'package:inicio_do_projeto/ver_aprovacao/calculo_presenca.dart'
    as presenca;

String verificarAprovacao(
    double nota1,
    double nota2,
    double media,
    int quantidadePresenca,
    int cargaHorariaDisciplina,
    double percentualMinimoPresenca) {
  var aprovadoNota = verificarAprovacaoNota(nota1, nota2, media);
  var aprovadoPresenca = verificarAprovacaoPresenca(
      quantidadePresenca, cargaHorariaDisciplina, percentualMinimoPresenca);
  var resultado = 'aprovado';
  if (aprovadoNota != true)
    resultado = 'reprovado por nota';
  else if (aprovadoPresenca != true)
    resultado = 'reprovado por nota';
  else if (aprovadoPresenca != true && aprovadoNota != true) {
    resultado = "Reprovado por nota e presença";
  } else {
   resultado= "Aprovado por nota";
  }
  return resultado;
}

bool verificarAprovacaoNota(double nota1, double nota2, [double media = 7.0]) {
  var result = (nota.calcularMedia(nota1, nota2) >= media);
  return result;
}

bool verificarAprovacaoPresenca(
    int quantidadePresenca, int cargaHorariaDisciplina,
    [double percentualMinimoPresenca = 60.0]) {
  return (presenca.calcularPercentualPresenca(
          quantidadePresenca, cargaHorariaDisciplina) >=
      percentualMinimoPresenca);
}
