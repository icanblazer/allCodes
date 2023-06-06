public class MethodsDemo2 {
    public Boolean nameContainsA(String name) {
        Boolean containsA = name.containsIgnoreCase('a');
        return containsA;
    }
}