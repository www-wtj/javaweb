package com.hygj.bean;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Affiche entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "AFFICHE", schema = "HAPPY")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Affiche implements java.io.Serializable {

	// Fields

	private Integer afficheId;
	private String content;
	private String pic;
	private Timestamp afficheDate;

	// Constructors

	/** default constructor */
	public Affiche() {
	}

	/** full constructor */
	public Affiche(String content, String pic, Timestamp afficheDate) {
		this.content = content;
		this.pic = pic;
		this.afficheDate = afficheDate;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_affiche")
	@SequenceGenerator(name="seq_affiche",sequenceName="seq_affiche_id",initialValue=1,allocationSize=1)
	@Column(name = "AFFICHE_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getAfficheId() {
		return this.afficheId;
	}

	public void setAfficheId(Integer afficheId) {
		this.afficheId = afficheId;
	}

	@Column(name = "CONTENT")
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "PIC", length = 100)
	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Column(name = "AFFICHE_DATE", length = 7)
	public Timestamp getAfficheDate() {
		return this.afficheDate;
	}

	public void setAfficheDate(Timestamp afficheDate) {
		this.afficheDate = afficheDate;
	}

}