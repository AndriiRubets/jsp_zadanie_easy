package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import java.time.LocalDateTime;
import java.util.Set;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Autor {
    private String imie;
    private String nazwisko;
    private LocalDateTime rok_urodzenia;
    private String miejsce_urodzenia;
    private Set<Ksiazka> ksiazkaSet;
}
