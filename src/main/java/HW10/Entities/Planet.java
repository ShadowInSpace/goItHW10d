package HW10.Entities;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Planet", schema = "hw10s")
public class Planet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    private String Name;
}
