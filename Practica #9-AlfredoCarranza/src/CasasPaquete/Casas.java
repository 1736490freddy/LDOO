/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CasasPaquete;

public class Casas {
    public Casa getPaquete(int tipoPaquete){
    if(tipoPaquete == 20){
      return new Casa10000();
    }
    if(tipoPaquete == 30){
      return new Casa20000();
    }
    if(tipoPaquete == 50){
        return new Casa30000();              
    }
    return null;
    }
}
