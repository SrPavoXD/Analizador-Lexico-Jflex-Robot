/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

/**
 *
 * @author Charly Ponce
 */

public enum Tokens {
    // Palabras reservadas
    Robot,
    Iniciar,

    // Métodos
    Velocidad,
    Base,
    Cuerpo,
    Garra,
    AbrirGarra,
    CerrarGarra,
    Repetir,

    // Otros tokens
    Identificador,
    Numero,

    // Símbolos
    ParentesisA,
    ParentesisC,
    Punto,
    Coma,
    PuntoComa,
    Igual,

    // Error
    ERROR
}
