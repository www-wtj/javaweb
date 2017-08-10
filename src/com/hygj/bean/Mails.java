package com.hygj.bean;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Mails entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "MAILS", schema = "HAPPY")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Mails implements java.io.Serializable {

	// Fields

	private Integer mailsId;
	private Yuangong yuangong;
	private String back;
	private String subject;
	private Timestamp maildate;
	private Integer state;
	private String details;

	// Constructors

	/** default constructor */
	public Mails() {
	}

	/** full constructor */
	public Mails(Yuangong yuangong, String back, String subject,
			Timestamp maildate, Integer state, String details) {
		this.yuangong = yuangong;
		this.back = back;
		this.subject = subject;
		this.maildate = maildate;
		this.state = state;
		this.details = details;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_mails")
	@SequenceGenerator(name="seq_mails",sequenceName="seq_mails_id",initialValue=1,allocationSize=1)
	@Column(name = "MAILS_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getMailsId() {
		return this.mailsId;
	}

	public void setMailsId(Integer mailsId) {
		this.mailsId = mailsId;
	}

	@ManyToOne()
	@JoinColumn(name = "YG_ID")
	public Yuangong getYuangong() {
		return this.yuangong;
	}

	public void setYuangong(Yuangong yuangong) {
		this.yuangong = yuangong;
	}

	@Column(name = "BACK", length = 50)
	public String getBack() {
		return this.back;
	}

	public void setBack(String back) {
		this.back = back;
	}

	@Column(name = "SUBJECT", length = 50)
	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Column(name = "MAILDATE", length = 7)
	public Timestamp getMaildate() {
		return this.maildate;
	}

	public void setMaildate(Timestamp maildate) {
		this.maildate = maildate;
	}

	@Column(name = "STATE", precision = 22, scale = 0)
	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	@Column(name = "DETAILS", length = 500)
	public String getDetails() {
		return this.details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

}