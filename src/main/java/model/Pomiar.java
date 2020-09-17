package model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Pomiar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Enumerated(value = EnumType.STRING)
    private Monter monter;
    private String klient;
    private String adresKlienta;
    @Enumerated(value = EnumType.STRING)
    private TypDrzwi typDrzwi;
    private int długość_drzwi;
    private int szerokość_drzwi;

}
