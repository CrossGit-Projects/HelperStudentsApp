package karol.appdemo.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "post")
@Data
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "post_id")
    private int id;

    @Column(name = "title")
    @NotNull
    private String title;

    @Column(name = "content")
    @NotNull
    private String content;

    @Column(name = "create_on")
    @NotNull
    private String createdOn;

    @Column(name = "author")
    @NotNull
    private String author;

    @Lob
    @Column(name = "data_post")
    private byte[] data;

    @Column(name = "groupdean_post")
    @NotNull
    private String groupDeanPost;

    @Transient
    private String image;


    @Transient
    private int nrPost;


}
