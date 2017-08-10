package com.hygj.bean;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Chanpin entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "CHANPIN", schema = "HAPPY")
public class Chanpin implements java.io.Serializable {

	// Fields

	private String chanpinId;
	private Gongyingshang gongyingshang;
	private String chanpinName;
	private String chanpinGuige;
	private String chanpinLeibie;
	private Integer chanpinDanjia;
	private String chanpinTupian;
	private String chanpinMiaoshu;
	private Set<Xsmx> xsmxes = new HashSet<Xsmx>(0);

	// Constructors

	/** default constructor */
	public Chanpin() {
	}

	/** minimal constructor */
	public Chanpin(Gongyingshang gongyingshang, String chanpinName,
			String chanpinGuige, String chanpinLeibie, Integer chanpinDanjia) {
		this.gongyingshang = gongyingshang;
		this.chanpinName = chanpinName;
		this.chanpinGuige = chanpinGuige;
		this.chanpinLeibie = chanpinLeibie;
		this.chanpinDanjia = chanpinDanjia;
	}

	/** full constructor */
	public Chanpin(Gongyingshang gongyingshang, String chanpinName,
			String chanpinGuige, String chanpinLeibie,
			Integer chanpinDanjia, String chanpinTupian,
			String chanpinMiaoshu, Set<Xsmx> xsmxes) {
		this.gongyingshang = gongyingshang;
		this.chanpinName = chanpinName;
		this.chanpinGuige = chanpinGuige;
		this.chanpinLeibie = chanpinLeibie;
		this.chanpinDanjia = chanpinDanjia;
		this.chanpinTupian = chanpinTupian;
		this.chanpinMiaoshu = chanpinMiaoshu;
		this.xsmxes = xsmxes;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "CHANPIN_ID", unique = true, nullable = false, length = 20)
	public String getChanpinId() {
		return this.chanpinId;
	}

	public void setChanpinId(String chanpinId) {
		this.chanpinId = chanpinId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GYS_ID", nullable = false)
	public Gongyingshang getGongyingshang() {
		return this.gongyingshang;
	}

	public void setGongyingshang(Gongyingshang gongyingshang) {
		this.gongyingshang = gongyingshang;
	}

	@Column(name = "CHANPIN_NAME", nullable = false, length = 20)
	public String getChanpinName() {
		return this.chanpinName;
	}

	public void setChanpinName(String chanpinName) {
		this.chanpinName = chanpinName;
	}

	@Column(name = "CHANPIN_GUIGE", nullable = false, length = 20)
	public String getChanpinGuige() {
		return this.chanpinGuige;
	}

	public void setChanpinGuige(String chanpinGuige) {
		this.chanpinGuige = chanpinGuige;
	}

	@Column(name = "CHANPIN_LEIBIE", nullable = false, length = 20)
	public String getChanpinLeibie() {
		return this.chanpinLeibie;
	}

	public void setChanpinLeibie(String chanpinLeibie) {
		this.chanpinLeibie = chanpinLeibie;
	}

	@Column(name = "CHANPIN_DANJIA", nullable = false, precision = 22, scale = 0)
	public Integer getChanpinDanjia() {
		return this.chanpinDanjia;
	}

	public void setChanpinDanjia(Integer chanpinDanjia) {
		this.chanpinDanjia = chanpinDanjia;
	}

	@Column(name = "CHANPIN_TUPIAN", length = 20)
	public String getChanpinTupian() {
		return this.chanpinTupian;
	}

	public void setChanpinTupian(String chanpinTupian) {
		this.chanpinTupian = chanpinTupian;
	}

	@Column(name = "CHANPIN_MIAOSHU", length = 200)
	public String getChanpinMiaoshu() {
		return this.chanpinMiaoshu;
	}

	public void setChanpinMiaoshu(String chanpinMiaoshu) {
		this.chanpinMiaoshu = chanpinMiaoshu;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "chanpin")
	public Set<Xsmx> getXsmxes() {
		return this.xsmxes;
	}

	public void setXsmxes(Set<Xsmx> xsmxes) {
		this.xsmxes = xsmxes;
	}

}