package HW10.Entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NonNull;

@Data
@Entity
@Table(name = "Planet", schema = "hw10s")
public class Planet {
    @Id
    private String id;
    private String Name;


    public void setId(String id) {
if(!id.matches("^[A-Z0-9]+$")) throw new IllegalArgumentException();
        this.id = id;
    }

}
