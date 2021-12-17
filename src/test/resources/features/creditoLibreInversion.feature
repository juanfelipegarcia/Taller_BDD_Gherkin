Feature: Credito de libre inversion
  Yo como Usuario de la entidad financiera
  Quiero solicitar un credito de libre inversion
  Para  adquirir un crucero a las Bahamas.

  Scenario Outline:  calcular el valor total del credito
    Given El usuraio desea saber el valor total de su credito
    When El usuario tiene especulado un plazo de <cantidad> meses con un valor de cuota de <valorCuota> pesos cop
    Then El usuario deberia pagar <valorTotal> en total por su credito
    Examples:
      |cantidad|valorCuota|valorTotal|
      |      48|   1850000|  88800000|
      |      36|   2050000|  73800000|
      |      12|    950000|  11400000|



  Scenario Outline: calcular el valor del interes del credito en el primer mes
    Given El usuario desea saber el valor del interes de su credito
    When El usuario solicito un credito por <valor> pesos cop con interes del <interesMensual> porciento mensual
    Then El usuario deberia pagar por intereses el primer mes por <interesPrimerMes>
    Examples:
      |   valor  | interesMensual | interesPrimerMes |
      | 65000000 |      0.91      |     591500       |
      | 40000000 |      0.97      |     388000       |
      | 97500000 |      0.75      |     731250       |
