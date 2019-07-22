package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Book implements IBaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String title;
    private int yearOfPublished;
    @Enumerated(EnumType.STRING)
    private TypeOfBooks typeOfBook;
    private int pages;

    @ManyToOne
    private Publisher wydawnictwo;

    @ManyToOne
    private Author author;
}
