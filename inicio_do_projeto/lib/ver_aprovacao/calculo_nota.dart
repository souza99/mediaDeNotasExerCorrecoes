//nota 1 representa 40%
//nota 2 representa 60%

double calcularMedia(double nota1, double nota2){
  nota1 = calcularNota1(nota1);
  nota2 = calcularNota2(nota2);
  var resultado = (nota1 + nota2) / 10;
  return (nota1 + nota2) / 10;
}

double calcularNota1(double nota1){
  return nota1 * 4;
}

double calcularNota2(double nota2){
  return nota2 * 6;
}
