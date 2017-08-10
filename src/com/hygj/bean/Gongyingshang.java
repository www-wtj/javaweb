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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Gongyingshang entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "GONGYINGSHANG", schema = "HAPPY")
public class Gongyingshang implements java.io.Serializable {

	// Fields

	private Integer gysId;
	private Diqu diqu;
	private String gysName;
	private String gysDizhi;
	private String gysWangzhan;
	private Integer gysDianhua;
	private String gysLianxiren;
	private String beizhu;
	private Set<Chanpin> chanpins = new HashSet<Chanpin>(0);

	// Constructors

	/** default constructor */
	public Gongyingshang() {
	}

	/** minimal constructor */
	public Gongyingshang(Diqu diqu, String gysName, Integer gysDianhua,
			String gysLianxiren) {
		this.diqu = diqu;
		this.gysName = gysName;
		this.gysDianhua = gysDianhua;
		this.gysLianxiren = gysLianxiren;
	}

	/** full constructor */
	public Gongyingshang(Diqu diqu, String gysName, String gysDizhi,
			String gysWangzhan, Integer gysDianhua, String gysLianxiren,
			String beizhu, Set<Chanpin> chanpins) {
		this.diqu = diqu;
		this.gysName = gysName;
		this.gysDizhi = gysDizhi;
		this.gysWangzhan = gysWangzhan;
		this.gysDianhua = gysDianhua;
		this.gysLianxiren = gysLianxiren;
		this.beizhu = beizhu;
		this.chanpins = chanpins;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_gys")
	@SequenceGenerator(name="seq_gys",sequenceName="seq_gys_id",initialValue=1,allocationSize=1)
	@Column(name = "GYS_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getGysId() {
		return this.gysId;
	}

	public void setGysId(Integer gysId) {
		this.gysId = gysId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DIQU_ID", nullable = false)
	public Diqu getDiqu() {
		return this.diqu;
	}

	public void setDiqu(Diqu diqu) {
		this.diqu = diqu;
	}

	@Column(name = "GYS_NAME", nullable = false, length = 20)
	public String getGysName() {
		return this.gysName;
	}

	public void setGysName(String gysName) {
		this.gysName = gysName;
	}

	@Column(name = "GYS_DIZHI", length = 50)
	public String getGysDizhi() {
		return this.gysDizhi;
	}

	public void setGysDizhi(String gysDizhi) {
		this.gysDizhi = gysDizhi;
	}

	@Column(name = "GYS_WANGZHAN", length = 20)
	public String getGysWangzhan() {
		return this.gysWangzhan;
	}

	public void setGysWangzhan(String gysWangzhan) {
		this.gysWangzhan = gysWangzhan;
	}

	@Column(name = "GYS_DIANHUA", nullable = false, precision = 22, scale = 0)
	public Integer getGysDianhua() {
		return this.gysDianhua;
	}

	public void setGysDianhua(Integer gysDianhua) {
		this.gysDianhua = gysDianhua;
	}

	@Column(name = "GYS_LIANXIREN", nullable = false, length = 20)
	public String getGysLianxiren() {
		return this.gysLianxiren;
	}

	public void setGysLianxiren(String gysLianxiren) {
		this.gysLianxiren = gysLianxiren;
	}

	@Column(name = "BEIZHU", length = 50)
	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "gongyingshang")
	public Set<Chanpin> getChanpins() {
		return this.chanpins;
	}

	public void setChanpins(Set<Chanpin> chanpins) {
		this.chanpins = chanpins;
	}

}