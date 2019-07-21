package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;


@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Ksiazka implements IBaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

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
