package cores;

public class ShowCores {
    public static void main(String[] args) {
        int cores = Runtime.getRuntime().availableProcessors();
        System.out.append("Number of cores: ").println(cores);
    }
}
