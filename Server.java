import java.io.IOException;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by cpinto on 05/08/16.
 */
public class Server {

    public static void main(String[] args) throws IOException {

        ServerSocket serverSocket = new ServerSocket(8088);

        while (true) {

            Socket socket = serverSocket.accept();

//            BufferedReader input =
//                    new BufferedReader(new InputStreamReader(socket.getInputStream()));

//            System.out.println("Recebi esta mensagem " + input);

            PrintWriter messageOut = new PrintWriter(socket.getOutputStream(), true);

//            messageOut.println(input + new Date().toString());
            messageOut.println("Hello World");

            System.out.println("Enviei uma mensagem");

            socket.close();
        }

        //need some rule to reach the code that closes the server socket.
        //serverSocket.close();

    }


}
