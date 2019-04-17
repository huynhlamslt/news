package springboot.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springboot.dao.TaskRespository;
import springboot.model.Task;
import springboot.service.PostsService;
import springboot.service.TaskService;

@Controller
public class MainController {
	
	@Autowired
	private TaskService taskService;
	@Autowired
	private PostsService postsService;
	
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		request.setAttribute("tasks", taskService.findALL());
		
		//Load trang chủ
		request.setAttribute("cpost", postsService.findPosts((int)(Math.random()*16 + 1)));
		request.setAttribute("post1", postsService.findPosts((int)(Math.random()*16 + 1)));
		request.setAttribute("post2", postsService.findPosts((int)(Math.random()*16 + 1)));
		
		request.setAttribute("rpost", postsService.findSome());
		request.setAttribute("upost", postsService.findUnder());
		request.setAttribute("mpost", postsService.findMost());
		return "index";
	}
	
	@GetMapping("/home")
	public String allTasks(HttpServletRequest request) {
		/*Random rd =new Random();
		int num = rd.nextInt(15);
		if(num == 0) {
			num= num+1;
		}*/
		
		//Load danh mục
		request.setAttribute("tasks", taskService.findALL());
		
		//Load trang chủ
		request.setAttribute("cpost", postsService.findPosts((int)(Math.random()*16 + 1)));
		request.setAttribute("post1", postsService.findPosts((int)(Math.random()*16 + 1)));
		request.setAttribute("post2", postsService.findPosts((int)(Math.random()*16 + 1)));
		
		request.setAttribute("rpost", postsService.findSome());
		request.setAttribute("upost", postsService.findUnder());
		request.setAttribute("mpost", postsService.findMost());
		return "index";
	}
	
	//Load trang danh mục
	@GetMapping("/category")
	public String category(@RequestParam int idchude, HttpServletRequest request) {
		
		switch (idchude) {
		case 1: request.setAttribute("catepost", postsService.findThoisu());	
			break;
		case 2: request.setAttribute("catepost", postsService.findQuocte());	
			break;
		case 3: request.setAttribute("catepost", postsService.findSuckhoe());	
			break;
		case 4: request.setAttribute("catepost", postsService.findGiaoduc());	
			break;
		case 5: request.setAttribute("catepost", postsService.findKhoahoc());	
			break;
		case 6: request.setAttribute("catepost", postsService.findDulich());	
			break;
		default:
			break;
		}
		
		request.setAttribute("tasks", taskService.findALL());
		
		request.setAttribute("rpost", postsService.findSome());
		
		request.setAttribute("mpost", postsService.findMost());
		
		return "category";
	}
	
	//Load trang chi tiết
	@GetMapping("/detail")
	public String SimplePost(@RequestParam int idbaiviet, HttpServletRequest request) {
		int n=idbaiviet;
		if(n>=18) {
			n=15;
		}
		
		request.setAttribute("detail", postsService.findPosts(idbaiviet));
		
		request.setAttribute("relate", postsService.findRelation(n));
		
		request.setAttribute("tasks", taskService.findALL());
		
		request.setAttribute("rpost", postsService.findSome());
		
		request.setAttribute("mpost", postsService.findMost());
		return "post";
	}
	
	
	/*@GetMapping("/new-tasks")
	public String newTasks(HttpServletRequest request) {
		request.setAttribute("mode", "mode_new");
		return "index";
	}
	
	@PostMapping("/save-tasks")
	public String saveTasks(@ModelAttribute Task task, BindingResult bindingResult, HttpServletRequest request) {
		taskService.save(task);
		request.setAttribute("task", taskService.findALL());
		request.setAttribute("mode", "mode_update");
		return "index";
	}
	
	@GetMapping("/update-tasks")
	public String updateTasks(@RequestParam int idchude, HttpServletRequest request) {
		request.setAttribute("task", taskService.findTask(idchude));
		request.setAttribute("mode", "mode_update");
		return "index";
	}
	
	@GetMapping("/delete-tasks")
	public String deleteTasks(@RequestParam int idchude, HttpServletRequest request) {
		taskService.delete(idchude);
		request.setAttribute("task", taskService.findALL());
		request.setAttribute("mode", "mode_update");
		return "index";
	}*/
}
