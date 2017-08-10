package com.hygj.bean;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Bumen entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "BUMEN", schema = "HAPPY")
public class Bumen implements java.io.Serializable {

	// Fields

	private Integer bumenId;
	private String bumenName;
	private Set<Yuangong> yuangongs = new HashSet<Yuangong>(0);

	// Constructors

	/** default constructor */
	public Bumen() {
	}

	/** minimal constructor */
	public Bumen(String bumenName) {
		this.bumenName = bumenName;
	}

	/** full constructor */
	public Bumen(String bumenName, Set<Yuangong> yuangongs) {
		this.bumenName = bumenName;
		this.yuangongs = yuangongs;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_bumen")
	@SequenceGenerator(name="seq_bumen",sequenceName="seq_bumen_id",initialValue=1,allocationSize=1)
	@Column(name = "BUMEN_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getBumenId() {
		return this.bumenId;
	}

	public void setBumenId(Integer bumenId) {
		this.bumenId = bumenId;
	}

	@Column(name = "BUMEN_NAME", nullable = false, length = 20)
	public String getBumenName() {
		return this.bumenName;
	}

	public void setBumenName(String bumenName) {
		this.bumenName = bumenName;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "bumen")
	public Set<Yuangong> getYuangongs() {
		return this.yuangongs;
	}

	public void setYuangongs(Set<Yuangong> yuangongs) {
		this.yuangongs = yuangongs;
	}

}