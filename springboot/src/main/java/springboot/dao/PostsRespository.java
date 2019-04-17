package springboot.dao;

import org.springframework.data.repository.CrudRepository;

import springboot.model.Posts;

public interface PostsRespository extends CrudRepository<Posts, Integer>{

}
