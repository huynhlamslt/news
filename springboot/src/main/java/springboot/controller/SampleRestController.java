package springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import springboot.service.PostsService;
import springboot.service.TaskService;
import springboot.model.Task;

@RestController
public class SampleRestController {
	
	@Autowired
	private TaskService taskService;
	@Autowired
	private PostsService postsService;
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello !!!";
	}
	
	@GetMapping("/all-posts")
	public String allPosts() {
		return postsService.findPosts(1).toString();
	}
	
	@GetMapping("/random")
	public int random() {
		return (int)(Math.random()*14 + 1);
	}
	/*@GetMapping("/all-tasks")
	public String allTasks() {
		return taskService.findALL().toString();
	}
	
	@GetMapping("/save-task")
	public String saveTask(@RequestParam String tenchude) {
		Task task = new Task(tenchude);
		taskService.save(task);	
		return "Task saved!";
	}
	
	@GetMapping("/delete-task")
	public String deleteTask(@RequestParam int idchude) {
		taskService.delete(idchude);	
		return "Task delete!";
	}*/
}
