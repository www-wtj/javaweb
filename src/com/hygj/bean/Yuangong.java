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
 * Yuangong entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "YUANGONG", schema = "HAPPY")
public class Yuangong implements java.io.Serializable {

	// Fields

	private Integer ygId;
	private Quanxian quanxian;
	private Bumen bumen;
	private String ygName;
	private String ygMima;
	private Integer ygDianhua;
	private String ygDizhi;
	private Integer youbian;
	private String wenti;
	private String daan;
	private String youxiang;
	private Set<Kehu> kehus = new HashSet<Kehu>(0);
	private Set<Xsjl> xsjls = new HashSet<Xsjl>(0);
	private Set<Mails> mailses = new HashSet<Mails>(0);

	// Constructors

	/** default constructor */
	public Yuangong() {
	}

	/** minimal constructor */
	public Yuangong(Bumen bumen, String ygName, String ygMima) {
		this.bumen = bumen;
		this.ygName = ygName;
		this.ygMima = ygMima;
	}

	/** full constructor */
	public Yuangong(Quanxian quanxian, Bumen bumen, String ygName,
			String ygMima, Integer ygDianhua, String ygDizhi,
			Integer youbian, String wenti, String daan, String youxiang,
			Set<Kehu> kehus, Set<Xsjl> xsjls, Set<Mails> mailses) {
		this.quanxian = quanxian;
		this.bumen = bumen;
		this.ygName = ygName;
		this.ygMima = ygMima;
		this.ygDianhua = ygDianhua;
		this.ygDizhi = ygDizhi;
		this.youbian = youbian;
		this.wenti = wenti;
		this.daan = daan;
		this.youxiang = youxiang;
		this.kehus = kehus;
		this.xsjls = xsjls;
		this.mailses = mailses;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_yg")
	@SequenceGenerator(name="seq_yg",sequenceName="seq_yg_id",initialValue=1,allocationSize=1)
	@Column(name = "YG_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getYgId() {
		return this.ygId;
	}

	public void setYgId(Integer ygId) {
		this.ygId = ygId;
	}

	@ManyToOne()
	@JoinColumn(name = "QX_ID")
	public Quanxian getQuanxian() {
		return this.quanxian;
	}

	public void setQuanxian(Quanxian quanxian) {
		this.quanxian = quanxian;
	}

	@ManyToOne()
	@JoinColumn(name = "BUMEN_ID", nullable = false)
	public Bumen getBumen() {
		return this.bumen;
	}

	public void setBumen(Bumen bumen) {
		this.bumen = bumen;
	}

	@Column(name = "YG_NAME", nullable = false, length = 20)
	public String getYgName() {
		return this.ygName;
	}

	public void setYgName(String ygName) {
		this.ygName = ygName;
	}

	@Column(name = "YG_MIMA", nullable = false, length = 20)
	public String getYgMima() {
		return this.ygMima;
	}

	public void setYgMima(String ygMima) {
		this.ygMima = ygMima;
	}

	@Column(name = "YG_DIANHUA", precision = 22, scale = 0)
	public Integer getYgDianhua() {
		return this.ygDianhua;
	}

	public void setYgDianhua(Integer ygDianhua) {
		this.ygDianhua = ygDianhua;
	}

	@Column(name = "YG_DIZHI", length = 50)
	public String getYgDizhi() {
		return this.ygDizhi;
	}

	public void setYgDizhi(String ygDizhi) {
		this.ygDizhi = ygDizhi;
	}

	@Column(name = "YOUBIAN", precision = 22, scale = 0)
	public Integer getYoubian() {
		return this.youbian;
	}

	public void setYoubian(Integer youbian) {
		this.youbian = youbian;
	}

	@Column(name = "WENTI", length = 50)
	public String getWenti() {
		return this.wenti;
	}

	public void setWenti(String wenti) {
		this.wenti = wenti;
	}

	@Column(name = "DAAN", length = 50)
	public String getDaan() {
		return this.daan;
	}

	public void setDaan(String daan) {
		this.daan = daan;
	}

	@Column(name = "YOUXIANG", length = 50)
	public String getYouxiang() {
		return this.youxiang;
	}

	public void setYouxiang(String youxiang) {
		this.youxiang = youxiang;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "yuangong")
	public Set<Kehu> getKehus() {
		return this.kehus;
	}

	public void setKehus(Set<Kehu> kehus) {
		this.kehus = kehus;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "yuangong")
	public Set<Xsjl> getXsjls() {
		return this.xsjls;
	}

	public void setXsjls(Set<Xsjl> xsjls) {
		this.xsjls = xsjls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "yuangong")
	public Set<Mails> getMailses() {
		return this.mailses;
	}

	public void setMailses(Set<Mails> mailses) {
		this.mailses = mailses;
	}

}