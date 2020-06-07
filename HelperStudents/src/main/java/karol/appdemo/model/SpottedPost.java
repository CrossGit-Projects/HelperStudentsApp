package karol.appdemo.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "spotted_post")
@Data
public class SpottedPost {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "spotted_post_id")
    private int id;

    @Column(name = "spotted_author")
    @NotNull
    private String author;

    @Column(name = "spotted_title")
    @NotNull
    private String title;

    @Column(name = "spoted_content")
    @NotNull
    private String content;

    @Column(name = "spotted_createon")
    @NotNull
    private String createOn;

    @Lob
    @Column(name = "spotted_data")
    private byte[] data;

    @Column(name = "spotted_like")
    @NotNull
    private int spottedLike;

    @Column(name = "spotted_dislike")
    @NotNull
    private int spottedDislike;

    @Transient
    private String image;
}
