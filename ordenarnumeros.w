/*Autor: Kevin Yoan Calderón García
  correo: kevinyoan4@gmail.com
  fecha: 26/10/2021*/

import java.util.Scanner;

public class ordenarnumeros{
   public static void main (String neo[]){
      Scanner entrada = new Scanner(System.in);
      int tamanio, x, y, z, cambioPosicion, orden;
        

      System.out.print("Ingresa el numero de valores a ordenar: ");
      tamanio = entrada.nextInt();

      //Establecemos el tamanio del arreglo
      int numeros[] = new int[tamanio];      

      //Recibe datos de usuario "valores a ordenar"
      for(x = 0; x < tamanio; x++){
             System.out.print("\nIngresa el valor: ");
             numeros[x] = entrada.nextInt();
      }

      for(z = 0; z < tamanio; z++){
          for(y = 0; y < tamanio -1; y++){
                if(numeros[y] > numeros[y+1]){
                        cambioPosicion = numeros[y];
                        numeros[y] = numeros[y+1];
                        numeros[y+1] = cambioPosicion;
                }
          }
       }          
      System.out.print("\nOrden de impresion\n1)ascendende\n2)descendente :");
      orden = entrada.nextInt();

     if(orden == 1){
       for(x = 0; x < tamanio; x++){
          System.out.print(numeros[x]+"  ,  ");
       }
     }else if(orden == 2){
      for(x = tamanio-1; x >= 0; x--){
       System.out.print(numeros[x]+"  ,  ");
     }
    }else{
     System.out.print("Opion invalida");
   }
  }
}
