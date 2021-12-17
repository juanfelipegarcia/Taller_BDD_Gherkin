Feature: Credito de libre inversion
  Yo como Usuario de la entidad financiera
  Quiero solicitar un credito de libre inversion
  Para  adquirir un crucero a las Bahamas.

  Scenario:  calcular el valor total del credito
    Given El usuraio desea saber el valor total de su credito
    When El usuario tiene especulado un plazo de 48 meses con un valor de cuota de 1850000 pesos cop
    Then El usuario deberia pagar 88800000 en total por su credito




  Scenario: calcular el valor del interes del credito en el primer mes
    Given El usuario desea saber el valor del interes de su credito
    When El usuario solicito un credito por 65000000 pesos cop con interes del 0.91 porciento mensual
    Then El usuario deberia pagar por intereses el primer mes por 591500
    