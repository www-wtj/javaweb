package com.hygj.bean;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Quanxian entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "QUANXIAN", schema = "HAPPY")
public class Quanxian implements java.io.Serializable {

	// Fields

	private Integer qxId;
	private String qxName;
	private Integer qxNum;
	private Set<Yuangong> yuangongs = new HashSet<Yuangong>(0);

	// Constructors

	/** default constructor */
	public Quanxian() {
	}

	/** full constructor */
	public Quanxian(String qxName, Integer qxNum, Set<Yuangong> yuangongs) {
		this.qxName = qxName;
		this.qxNum = qxNum;
		this.yuangongs = yuangongs;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "QX_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getQxId() {
		return this.qxId;
	}

	public void setQxId(Integer qxId) {
		this.qxId = qxId;
	}

	@Column(name = "QX_NAME", length = 20)
	public String getQxName() {
		return this.qxName;
	}

	public void setQxName(String qxName) {
		this.qxName = qxName;
	}

	@Column(name = "QX_NUM", precision = 22, scale = 0)
	public Integer getQxNum() {
		return this.qxNum;
	}

	public void setQxNum(Integer qxNum) {
		this.qxNum = qxNum;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "quanxian")
	public Set<Yuangong> getYuangongs() {
		return this.yuangongs;
	}

	public void setYuangongs(Set<Yuangong> yuangongs) {
		this.yuangongs = yuangongs;
	}

}