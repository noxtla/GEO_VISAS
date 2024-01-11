import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;


public class Collections {
    public static void main(String[] args) {
       ///arrayList();
       ///hashMap();
       ///setEnJava();
    }


    public static void setEnJava (){

        ///Las interfaces en java no pueden ser instanciadas directamente con el operador new
        ///Set<String> conjuntoInterfaz = new Set<E>();

        ///Intanciar con el operador new una clase
        Set<Integer> conjuntoClase = new HashSet<>();
        conjuntoClase.add(5);
        System.out.println(conjuntoClase);


    }


    public static void arrayList (){
        ///Creation
        ArrayList<Integer> listaDeEnteros = new ArrayList<>();

        ///Store data
        listaDeEnteros.add(1);
        listaDeEnteros.add(2);
        listaDeEnteros.add(3);
        listaDeEnteros.add(4);
        listaDeEnteros.add(5);


        ///Retrieve data from arrayList
        for (Integer element: listaDeEnteros){
            System.out.println("Elemento con forEach " + element);
            
        }

        for(int i=0; i<listaDeEnteros.size(); i++){
                
                System.out.println("Elemento con for " + listaDeEnteros.get(i));
        }
    }


    public static void hashMap(){
        ///Creation
        HashMap<String,Integer> myHasthMAp = new HashMap<>();

        ///Store data
        myHasthMAp.put("Jalisco",240996);
        myHasthMAp.put("Colima",987431);
        myHasthMAp.put("Michoacan",589654);
        myHasthMAp.put("Sinaloa",9354776);
        myHasthMAp.put("Sinaloa",9354776);
        myHasthMAp.put("Sinaloa",9354776);
        myHasthMAp.put("Sinaloa",9354776);
        myHasthMAp.put("Sinaloa",888888);

/* 
        ///Retrieve data from hashMap
        for (HashMap <String, Integer> elemento : myHasthMAp.entrySet()) {
            String clave = elemento.getKey();
            Integer valor = elemento.getValue();

            System.out.println("Clave "+ clave + "Valor "+ valor);
        }*/

        /// Retrive data from hashMap
        /// Recorremos los objetos de tipo String que es el valor de la cadena
        /// En el iterable creamos un SET de llaves
        ///Aqui practicamos la collection set y hashMap
        ///Pero no devuelve duplicados, vamos a lanzar uno que si devuelva duplicados


        ///Recuerda que en hashMap las claves deben de ser unicas
        ///si agregas un valor duplicado se sobre escribe y se queda solo el ultimo

        for (String clave : myHasthMAp.keySet()) {
            Integer valor = myHasthMAp.get(clave);
            
            System.out.println("Clave  "+ clave + " Valor " + valor);
        }

        ///Este es otro camino para devolver los elementos pero tambien elimina duplicados

        for (Map.Entry<String, Integer> elemento: myHasthMAp.entrySet()){
            String a = elemento.getKey();
            Integer b = elemento.getValue();
            System.out.print(a + " ");
            System.out.println(b);
        }

        for(Object key: myHasthMAp.keySet()){
            System.out.println("dup"+key);

        }

        for (Integer valor: myHasthMAp.values()){
            System.out.println(valor);

        }
    
     
    }
}




/*Collections in Java */

/*
 
 ArrayList





 */







 
