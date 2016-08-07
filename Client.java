import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

/**
 * Created by cpinto on 05/08/16.
 */
public class Client {

    public static void main(String[] args) throws IOException {

        Socket s = new Socket("localhost", 9090);
        BufferedReader input =
                new BufferedReader(new InputStreamReader(s.getInputStream()));
        String answer = input.readLine();

        System.out.println("The answer: " + answer);
        System.exit(0);
    }


}
