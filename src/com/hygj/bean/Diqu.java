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
 * Diqu entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "DIQU", schema = "HAPPY")
public class Diqu implements java.io.Serializable {

	// Fields

	private Integer diquId;
	private String diquName;
	private Set<Gongyingshang> gongyingshangs = new HashSet<Gongyingshang>(0);
	private Set<Kehu> kehus = new HashSet<Kehu>(0);

	// Constructors

	/** default constructor */
	public Diqu() {
	}

	/** minimal constructor */
	public Diqu(String diquName) {
		this.diquName = diquName;
	}

	/** full constructor */
	public Diqu(String diquName, Set<Gongyingshang> gongyingshangs,
			Set<Kehu> kehus) {
		this.diquName = diquName;
		this.gongyingshangs = gongyingshangs;
		this.kehus = kehus;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "DIQU_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getDiquId() {
		return this.diquId;
	}

	public void setDiquId(Integer diquId) {
		this.diquId = diquId;
	}

	@Column(name = "DIQU_NAME", nullable = false, length = 20)
	public String getDiquName() {
		return this.diquName;
	}

	public void setDiquName(String diquName) {
		this.diquName = diquName;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "diqu")
	public Set<Gongyingshang> getGongyingshangs() {
		return this.gongyingshangs;
	}

	public void setGongyingshangs(Set<Gongyingshang> gongyingshangs) {
		this.gongyingshangs = gongyingshangs;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "diqu")
	public Set<Kehu> getKehus() {
		return this.kehus;
	}

	public void setKehus(Set<Kehu> kehus) {
		this.kehus = kehus;
	}

}