package HW10;

import HW10.Entities.Client;
import HW10.Services.ClientCrudService;
import org.flywaydb.core.Flyway;

public class Main {
    public static void main(String[] args) {
//        Client client = new Client();
//        client.setName("Vasylyna");
        ClientCrudService clientCrudService = new ClientCrudService();
        Client client7 = clientCrudService.getById(7);
        System.out.println("client7 = " + client7);
        clientCrudService.deleteClient(client7);
//        clientCrudService.createClient(client);
//        System.out.println("clientCrudService.getById(11) = " + clientCrudService.getById(11));
    }
}
