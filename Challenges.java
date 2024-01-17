import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Challenges {

    /*Create 3 collections
        1 From List<E> interface
        2 From HashSet<K,V> interface
        3 From Set<E> interface
    */
    public static void main(String[] args) {
        ///functionList();
        ///functionHashSet();
        
    }

    public static void functionList() {

        ///Creation
        List<Integer> myArrayList = new ArrayList<>();
        myArrayList = new LinkedList<>();

        ///Store
        myArrayList.add(1);
        myArrayList.add(2);
        myArrayList.add(3);
        myArrayList.add(4);
        myArrayList.add(5);

        ///Retrieve without index
        for (Integer element : myArrayList) {
            System.out.println(element);
        }

        ///Retrieve with index
        for(int i =0; i<myArrayList.size(); i++){
            System.out.println(myArrayList.get(i));
        }

    }

    public static void functionMap(){

        ///Creation
        Map<Integer,Integer> myHasthMAp = new HashMap<>();

        ///Store
        myHasthMAp.put(1, 55);
        myHasthMAp.put(2, 66);
        myHasthMAp.put(3, 77);
        myHasthMAp.put(4, 88);
        myHasthMAp.put(5, 99);

        ///Retrieve
        for (Integer keyElemet : myHasthMAp.keySet()) {
            ///Integer valor = myHasthMAp.get(keyElemet);
            System.out.println("Clave "+ keyElemet + "Valor "+ myHasthMAp.get(keyElemet));
        }
        

        System.out.println("*-*-*-*-*-*-*-*-*");
        for (Map.Entry<Integer, Integer> keyElemet : myHasthMAp.entrySet()) {
            
            System.out.println("Clave "+ keyElemet.getKey() + "Valor "+ keyElemet.getValue());
        }
    }

    public static void functionSet () {
        Set<> mySet = new HashSet<>();

        ///Aqui me quedo porque voy al pelo
    }


    
}
