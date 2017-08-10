package com.hygj.bean;

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
 * Xsmx entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "XSMX", schema = "HAPPY")
public class Xsmx implements java.io.Serializable {

	// Fields

	private Integer xsmxId;
	private Chanpin chanpin;
	private Xsjl xsjl;
	private Integer shuliang;

	// Constructors

	/** default constructor */
	public Xsmx() {
	}

	/** full constructor */
	public Xsmx(Chanpin chanpin, Xsjl xsjl, Integer shuliang) {
		this.chanpin = chanpin;
		this.xsjl = xsjl;
		this.shuliang = shuliang;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_xsmx")
	@SequenceGenerator(name="seq_xsmx",sequenceName="seq_xsmx_id",initialValue=1,allocationSize=1)
	@Column(name = "XSMX_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getXsmxId() {
		return this.xsmxId;
	}

	public void setXsmxId(Integer xsmxId) {
		this.xsmxId = xsmxId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CHAPIN_ID", nullable = false)
	public Chanpin getChanpin() {
		return this.chanpin;
	}

	public void setChanpin(Chanpin chanpin) {
		this.chanpin = chanpin;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "XSJL_ID", nullable = false)
	public Xsjl getXsjl() {
		return this.xsjl;
	}

	public void setXsjl(Xsjl xsjl) {
		this.xsjl = xsjl;
	}

	@Column(name = "SHULIANG", nullable = false, precision = 22, scale = 0)
	public Integer getShuliang() {
		return this.shuliang;
	}

	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}

}