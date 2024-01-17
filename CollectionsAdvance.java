import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Collections;

public class CollectionsAdvance {
    public static void main(String[] args) {
        arrayListChallenge();
        
    }

    public static void arrayListChallenge(){

        List<String> myArrayList = new ArrayList<>();

        ///Store
        myArrayList.add("Jalisco");
        myArrayList.add("Michoacan");
        myArrayList.add("Colima");
        myArrayList.add("Sinaloa");
        myArrayList.add("Nayarit");
        
        ///Imprimir la lista original

        int i = 0;
        for (String element : myArrayList) {
            
            System.out.println(i +" " + element);
            i++;
        }

        // 3. Agregar y Eliminar Elementos
        // Agregar un nuevo nombre al final
        // Eliminar un nombre existente

        System.out.println("");
        if (myArrayList.contains("Colima")) {
            myArrayList.remove(myArrayList.indexOf("Nayarit"));
        }
        
        myArrayList.add("Zacatecas");

        int x = 0;
        for (String element : myArrayList) {
            System.out.println(x +" "+ element);
            x++;
        }

        // 4. Verificar si un Nombre Existe
        // Preguntar al usuario por un nombre
        // Verificar si el nombre está en la lista e imprimir un mensaje

        String nombre = "Jalisco";
        System.out.println(myArrayList.contains(nombre));

         // 5. Ordenar la Lista
        // Utilizar el método Collections.sort() para ordenar alfabéticamente
        Collections.sort(myArrayList);

        System.out.println("Ordenados");
        for(String elementSort: myArrayList){
            System.out.println(elementSort);
        }

        // 6. Invertir la Lista
        // Utilizar el método Collections.reverse() para invertir la lista

        Collections.reverse(myArrayList);

        System.out.println("Atras");
        for(String elementoOrdenado: myArrayList){
            System.out.println(elementoOrdenado);
        }

        // 7. Tamaño de la Lista
        // Imprimir el tamaño actual de la lista

        System.out.println(myArrayList.size());


    }
    
}
