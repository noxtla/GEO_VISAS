import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

/*
 * Practice the basic operations for collections in JAva
 * Implements List, Map, Set
 */

public class Collections {
    public static void main(String[] args) {
       ///arrayList();
       ///hashMap();
       ///setEnJava();
    }


    public static void setEnJava (){

        ///Las interfaces en java no pueden ser instanciadas directamente con el operador new
        ///ERROR Set<String> conjuntoInterfaz = new Set<E>();

        ///Intanciar con el operador new una clase
        Set<Integer> conjuntoClase = new HashSet<>();
        conjuntoClase.add(5);
        System.out.println(conjuntoClase);
    }


    public static void arrayList (){
        ///Creation
        ArrayList<Integer> listaDeEnteros = new ArrayList<>();

        ///Puedes crear los arrayList de dos manera

        
        ///Debilmente acoplados
        List<Integer> myArrayListFromInterface = new ArrayList<>();
        ///Esta declaracion hace que el set sea tipo List en lugar de ArrayList
        ///Al ser debilmente acoplados puedes cambiar LA IMPLEMENTACION SUBYACENTE
        myArrayListFromInterface = new LinkedList<>();
       
        ///Fuertemente acomplados
        ///NO CAMBIA LA IMPLEMENTACION SUBYACENTE
        ///Tipo concreto arrayList, relevante si necesitas acceder a metodos especificos
        ArrayList<Integer> myArrayListClass = new ArrayList<>();

        ///Fin de la creacion

        ///Store data
        listaDeEnteros.add(1);
        listaDeEnteros.add(2);
        listaDeEnteros.add(3);
        listaDeEnteros.add(4);
        listaDeEnteros.add(5);


        ///Retrieve data from arrayList
        ///Element ya tiene el dato SIN INDICE
        for (Integer element: listaDeEnteros){
            System.out.println("Elemento con forEach " + element);
            
        }

        ///CON INDICE
        for(int i=0; i<listaDeEnteros.size(); i++){
                
                System.out.println("Elemento con for " + listaDeEnteros.get(i));
        }
    }


    public static void hashMap(){
        ///Creation
        ///Creado fuertemente acoplado 
        HashMap<String,Integer> myHasthMAp = new HashMap<>();

        ///Creado debilmente acoplado 
        ///Posibilidad de cambiar LA IMPLEMENTACION SUBYACENTE

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


        ///Ya que la clave es unica, hacemos un set de la clave
        ///Asi ya tenemos el indice para acceder a los datos
        ///En un solo for recorremos el mapa

        ///SI USAR INDICES EN EL FOREACH
        ///Aqui si hay que utilizar indices a pesar de ser un foreach
        for (String clave : myHasthMAp.keySet()) {
            Integer valor = myHasthMAp.get(clave);
            
            System.out.println("Clave  "+ clave + " Valor " + valor);
        }

        

        ///Este es otro camino para devolver los elementos pero tambien elimina duplicados
        ///Como siempre vas a recorrer el key es mejor que el Iterable Type sea el objeto Key
        ///EJ Objeto key String: for (String clave [...]

        ///UPDATE
        ///El entrySet tambien es buena idea 
        ///A traves de el puedes acceder a key y value independientemente

        ///PARA ENTREVISTAS
        ///Indiferente el metodo mientras los recorras esta bien

        for (Map.Entry<String, Integer> elemento: myHasthMAp.entrySet()){
            String a = elemento.getKey();
            Integer b = elemento.getValue();
            System.out.print(a + " ");
            System.out.println(b);
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







 
