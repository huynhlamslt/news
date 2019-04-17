package springboot.dao;

import org.springframework.data.repository.CrudRepository;

import springboot.model.Task;

public interface TaskRespository extends CrudRepository<Task, Integer>{
	
}
