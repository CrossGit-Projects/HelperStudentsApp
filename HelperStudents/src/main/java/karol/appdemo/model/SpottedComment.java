package karol.appdemo.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "spotted_comment")
@Data
public class SpottedComment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "spotted_comment_id")
    private int id;
    @Column(name = "spotted_comment_author")
    @NotNull
    private String author;
    @Column(name = "spotted_comment_title")
    @NotNull
    private String title;
    @Column(name = "spotted_comment_content")
    @NotNull
    private String content;
    @Column(name = "spotted_comment_createon")
    @NotNull
    private String createOn;

    @Lob
    @Column(name = "spotted_comment_data")
    private byte[] data;
    @Transient
    private String image;

    @Column(name = "id_join_post")
    @NotNull
    private int id_post;

    @Column(name = "spotted_comment_like")
    @NotNull
    private int spottedLikeComment;

    @Column(name = "spotted_comment_dislike")
    @NotNull
    private int spottedDislikeComment;

}
