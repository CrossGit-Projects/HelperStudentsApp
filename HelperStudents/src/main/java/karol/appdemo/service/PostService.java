package karol.appdemo.service;


import karol.appdemo.model.Post;

import java.util.List;

public interface PostService {

    void savePost(Post post);

    List<Post> findAll();

    void deletePostById(int id);
}
