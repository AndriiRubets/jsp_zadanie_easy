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
public class Book implements IBaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String title;
    private LocalDateTime yearOfManufacture;
    @Enumerated(EnumType.STRING)
    private TypeOfBooks typeOfBook;
    private int pages;

    @ManyToOne
    private Publisher wydawnictwo;

    @ManyToOne
    private Author author;


}
