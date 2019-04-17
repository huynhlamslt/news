package springboot.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name= "chude", schema= "tintuc")
public class Task implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idchude;
	private String tenchude;
	/*@Temporal(TemporalType.TIMESTAMP)
	private Date datecreate;*/
	
	public Task() {}
	
	public Task(String ten) {
		super();
		this.tenchude = ten;
	}
		
	/*public Task(int idchude, String tenchude) {
		super();
		this.idchude = idchude;
		this.tenchude = tenchude;
	}*/

	public int getId() {
		return idchude;
	}
	public void setId(int id) {
		this.idchude = id;
	}
	public String getTen() {
		return tenchude;
	}
	public void setTen(String ten) {
		this.tenchude = ten;
	}

	@Override
	public String toString() {
		return "Task [id=" + idchude + ", ten=" + tenchude + "]";
	}
	
	
}
