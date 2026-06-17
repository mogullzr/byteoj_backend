package com.example.backend.service.source.trie.reposity;

import com.example.backend.models.domain.posts.Posts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostsResposity extends JpaRepository<Posts, String> {
    List<Posts> findAll();
}




