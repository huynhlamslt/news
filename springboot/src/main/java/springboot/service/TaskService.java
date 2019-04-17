package springboot.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import springboot.dao.TaskRespository;
import springboot.model.Task;

@Service
@Transactional
public class TaskService {

	private final TaskRespository taskRespository;

	public TaskService(TaskRespository taskRespository) {
		this.taskRespository = taskRespository;
	}
	
	public List<Task> findALL(){
		List<Task> tasks = new ArrayList<>();
		for (Task task: taskRespository.findAll()) {
			tasks.add(task);
		}
		return tasks;
	}
	
	public Task findTask(int idchude)
	{
		return taskRespository.findOne(idchude);
	}
	
	public void save(Task task) {
		taskRespository.save(task);
	}
	
	public void delete(int idchude) {
		taskRespository.delete(idchude);
	}
}
