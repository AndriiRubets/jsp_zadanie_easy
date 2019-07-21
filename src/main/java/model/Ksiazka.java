package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;


@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Ksiazka {

    private String tytul;
    private LocalDateTime rok_wydania;
    @Enumerated(EnumType.STRING)
    private TypKsiazki typKsiazki;
    private int iloscStron;

    @ManyToOne
    private Wydawnictwo wydawnictwo;

    @ManyToOne
    private Autor autor;

}
