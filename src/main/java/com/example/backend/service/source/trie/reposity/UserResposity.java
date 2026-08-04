package com.example.backend.service.source.trie.reposity;

import com.example.backend.models.domain.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserResposity extends JpaRepository<User, String> {
    List<User> findAll();
}
