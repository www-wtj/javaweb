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
 * Kehugtjl entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "KEHUGTJL", schema = "HAPPY")
@org.hibernate.annotations.Entity(dynamicInsert=true)
public class Kehugtjl implements java.io.Serializable {

	// Fields

	private Integer gtjlId;
	private Kehu kehu;
	private String gtfs;
	private String zhuti;
	private String jllb;
	private Timestamp shijian;
	private String gtjilu;
	private String jgjilu;

	// Constructors

	/** default constructor */
	public Kehugtjl() {
	}

	/** minimal constructor */
	public Kehugtjl(Kehu kehu, String gtfs, String zhuti, String jllb,
			Timestamp shijian) {
		this.kehu = kehu;
		this.gtfs = gtfs;
		this.zhuti = zhuti;
		this.jllb = jllb;
		this.shijian = shijian;
	}

	/** full constructor */
	public Kehugtjl(Kehu kehu, String gtfs, String zhuti, String jllb,
			Timestamp shijian, String gtjilu, String jgjilu) {
		this.kehu = kehu;
		this.gtfs = gtfs;
		this.zhuti = zhuti;
		this.jllb = jllb;
		this.shijian = shijian;
		this.gtjilu = gtjilu;
		this.jgjilu = jgjilu;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_kehugtjl")
	@SequenceGenerator(name="seq_kehugtjl",sequenceName="seq_gtjl_id",initialValue=1,allocationSize=1)
	@Column(name = "GTJL_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getGtjlId() {
		return this.gtjlId;
	}

	public void setGtjlId(Integer gtjlId) {
		this.gtjlId = gtjlId;
	}

	@ManyToOne()
	@JoinColumn(name = "KEHU_ID", nullable = false)
	public Kehu getKehu() {
		return this.kehu;
	}

	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}

	@Column(name = "GTFS", nullable = false, length = 20)
	public String getGtfs() {
		return this.gtfs;
	}

	public void setGtfs(String gtfs) {
		this.gtfs = gtfs;
	}

	@Column(name = "ZHUTI", nullable = false, length = 20)
	public String getZhuti() {
		return this.zhuti;
	}

	public void setZhuti(String zhuti) {
		this.zhuti = zhuti;
	}

	@Column(name = "JLLB", nullable = false, length = 20)
	public String getJllb() {
		return this.jllb;
	}

	public void setJllb(String jllb) {
		this.jllb = jllb;
	}

	@Column(name = "SHIJIAN",  length = 7)
	public Timestamp getShijian() {
		return this.shijian;
	}

	public void setShijian(Timestamp shijian) {
		this.shijian = shijian;
	}

	@Column(name = "GTJILU", length = 200)
	public String getGtjilu() {
		return this.gtjilu;
	}

	public void setGtjilu(String gtjilu) {
		this.gtjilu = gtjilu;
	}

	@Column(name = "JGJILU", length = 200)
	public String getJgjilu() {
		return this.jgjilu;
	}

	public void setJgjilu(String jgjilu) {
		this.jgjilu = jgjilu;
	}

}