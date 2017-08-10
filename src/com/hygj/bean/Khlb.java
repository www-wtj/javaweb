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
 * Khlb entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "KHLB", schema = "HAPPY")
public class Khlb implements java.io.Serializable {

	// Fields

	private Integer khlbId;
	private String klhlbName;
	private Set<Kehu> kehus = new HashSet<Kehu>(0);

	// Constructors

	/** default constructor */
	public Khlb() {
	}

	/** full constructor */
	public Khlb(String klhlbName, Set<Kehu> kehus) {
		this.klhlbName = klhlbName;
		this.kehus = kehus;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "KHLB_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getKhlbId() {
		return this.khlbId;
	}

	public void setKhlbId(Integer khlbId) {
		this.khlbId = khlbId;
	}

	@Column(name = "KLHLB_NAME", length = 20)
	public String getKlhlbName() {
		return this.klhlbName;
	}

	public void setKlhlbName(String klhlbName) {
		this.klhlbName = klhlbName;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "khlb")
	public Set<Kehu> getKehus() {
		return this.kehus;
	}

	public void setKehus(Set<Kehu> kehus) {
		this.kehus = kehus;
	}

}