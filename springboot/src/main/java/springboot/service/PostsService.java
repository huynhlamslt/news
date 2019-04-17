package springboot.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import springboot.dao.PostsRespository;
import springboot.model.Posts;

@Service
@Transactional
public class PostsService {
	private final PostsRespository postsRespository;

	public PostsService(PostsRespository postsRespository) {
		this.postsRespository = postsRespository;
	}
	
	public List<Posts> finfAll(){
		List<Posts> posts = new ArrayList<>();
		for(Posts post: postsRespository.findAll()) {
			posts.add(post);
		}
		return posts;
	}
	
	//Tìm theo số lượng bài
	public List<Posts> findSome(){
		int n=4;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<6; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n+1);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm bài bên dưới
	public List<Posts> findUnder(){
		int n=10;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<4; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n+1);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm bài bên dưới
	public List<Posts> findMost(){
		int n=14;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<4; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n+1);
			posts.add(post);
			n++;
		}
		return posts;
	}
		
	//Tìm 1 bài viết
	public Posts findPosts(int idbaiviet) {
		return postsRespository.findOne(idbaiviet);
	}
	
	//Tìm mục thời sự
	public List<Posts> findThoisu(){
		int n=1;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<4; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm mục quốc tế
	public List<Posts> findQuocte(){
		int n=5;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<4; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm mục sức khoẻ
	public List<Posts> findSuckhoe(){
		int n=9;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<3; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm mục giáo dục
	public List<Posts> findGiaoduc(){
		int n=12;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<3; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm mục khoa học
	public List<Posts> findKhoahoc(){
		int n=15;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<3; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm mục du lịch
	public List<Posts> findDulich(){
		int n=18;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<3; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
	
	//Tìm bài viết liên quan
	public List<Posts> findRelation(int idbaiviet){
		int n=idbaiviet+1;
		List<Posts> posts = new ArrayList<>();
		
		for(int i=0; i<2; i++) {
			Posts post = new Posts();
			post = postsRespository.findOne(n);
			posts.add(post);
			n++;
		}
		return posts;
	}
}
