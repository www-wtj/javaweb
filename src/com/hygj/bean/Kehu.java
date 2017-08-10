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
 * Kehu entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "KEHU", schema = "HAPPY")
public class Kehu implements java.io.Serializable {

	// Fields

	private Integer kehuId;
	private Diqu diqu;
	private Yuangong yuangong;
	private Khlb khlb;
	private String kehuName;
	private String kehuDizhi;
	private String kehuWangzhan;
	private Integer kehuDianhua;
	private String kehuLianxiren;
	private String yewu;
	private Set<Kehugtjl> kehugtjls = new HashSet<Kehugtjl>(0);
	private Set<Xsjl> xsjls = new HashSet<Xsjl>(0);

	// Constructors

	/** default constructor */
	public Kehu() {
	}

	/** minimal constructor */
	public Kehu(Diqu diqu, Yuangong yuangong, Khlb khlb, String kehuName,
			String kehuLianxiren) {
		this.diqu = diqu;
		this.yuangong = yuangong;
		this.khlb = khlb;
		this.kehuName = kehuName;
		this.kehuLianxiren = kehuLianxiren;
	}

	/** full constructor */
	public Kehu(Diqu diqu, Yuangong yuangong, Khlb khlb, String kehuName,
			String kehuDizhi, String kehuWangzhan, Integer kehuDianhua,
			String kehuLianxiren, String yewu, Set<Kehugtjl> kehugtjls,
			Set<Xsjl> xsjls) {
		this.diqu = diqu;
		this.yuangong = yuangong;
		this.khlb = khlb;
		this.kehuName = kehuName;
		this.kehuDizhi = kehuDizhi;
		this.kehuWangzhan = kehuWangzhan;
		this.kehuDianhua = kehuDianhua;
		this.kehuLianxiren = kehuLianxiren;
		this.yewu = yewu;
		this.kehugtjls = kehugtjls;
		this.xsjls = xsjls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_kehu")
	@SequenceGenerator(name="seq_kehu",sequenceName="seq_kehu_id",initialValue=1,allocationSize=1)
	@Column(name = "KEHU_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getKehuId() {
		return this.kehuId;
	}

	public void setKehuId(Integer kehuId) {
		this.kehuId = kehuId;
	}

	@ManyToOne()
	@JoinColumn(name = "DIQU_ID", nullable = false)
	public Diqu getDiqu() {
		return this.diqu;
	}

	public void setDiqu(Diqu diqu) {
		this.diqu = diqu;
	}

	@ManyToOne()
	@JoinColumn(name = "YG_ID", nullable = false)
	public Yuangong getYuangong() {
		return this.yuangong;
	}

	public void setYuangong(Yuangong yuangong) {
		this.yuangong = yuangong;
	}

	@ManyToOne()
	@JoinColumn(name = "KHLB_ID", nullable = false)
	public Khlb getKhlb() {
		return this.khlb;
	}

	public void setKhlb(Khlb khlb) {
		this.khlb = khlb;
	}

	@Column(name = "KEHU_NAME", nullable = false, length = 20)
	public String getKehuName() {
		return this.kehuName;
	}

	public void setKehuName(String kehuName) {
		this.kehuName = kehuName;
	}

	@Column(name = "KEHU_DIZHI", length = 200)
	public String getKehuDizhi() {
		return this.kehuDizhi;
	}

	public void setKehuDizhi(String kehuDizhi) {
		this.kehuDizhi = kehuDizhi;
	}

	@Column(name = "KEHU_WANGZHAN", length = 20)
	public String getKehuWangzhan() {
		return this.kehuWangzhan;
	}

	public void setKehuWangzhan(String kehuWangzhan) {
		this.kehuWangzhan = kehuWangzhan;
	}

	@Column(name = "KEHU_DIANHUA", precision = 22, scale = 0)
	public Integer getKehuDianhua() {
		return this.kehuDianhua;
	}

	public void setKehuDianhua(Integer kehuDianhua) {
		this.kehuDianhua = kehuDianhua;
	}

	@Column(name = "KEHU_LIANXIREN", nullable = false, length = 20)
	public String getKehuLianxiren() {
		return this.kehuLianxiren;
	}

	public void setKehuLianxiren(String kehuLianxiren) {
		this.kehuLianxiren = kehuLianxiren;
	}

	@Column(name = "YEWU", length = 200)
	public String getYewu() {
		return this.yewu;
	}

	public void setYewu(String yewu) {
		this.yewu = yewu;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "kehu")
	public Set<Kehugtjl> getKehugtjls() {
		return this.kehugtjls;
	}

	public void setKehugtjls(Set<Kehugtjl> kehugtjls) {
		this.kehugtjls = kehugtjls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "kehu")
	public Set<Xsjl> getXsjls() {
		return this.xsjls;
	}

	public void setXsjls(Set<Xsjl> xsjls) {
		this.xsjls = xsjls;
	}

}