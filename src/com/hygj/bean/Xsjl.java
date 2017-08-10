package com.hygj.bean;

import java.sql.Timestamp;
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
 * Xsjl entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "XSJL", schema = "HAPPY")
public class Xsjl implements java.io.Serializable {

	// Fields

	private Integer xsjlId;
	private Yuangong yuangong;
	private Kehu kehu;
	private Timestamp xiadanriqi;
	private Timestamp fahuoqiqi;
	private Timestamp khshouhuoriqi;
	private String fukuan;
	private String fapiao;
	private String ywzt;
	private String xsjlBeizhu;
	private Set<Xsmx> xsmxes = new HashSet<Xsmx>(0);

	// Constructors

	/** default constructor */
	public Xsjl() {
	}

	/** minimal constructor */
	public Xsjl(Yuangong yuangong, Kehu kehu, String ywzt) {
		this.yuangong = yuangong;
		this.kehu = kehu;
		this.ywzt = ywzt;
	}

	/** full constructor */
	public Xsjl(Yuangong yuangong, Kehu kehu, Timestamp xiadanriqi,
			Timestamp fahuoqiqi, Timestamp khshouhuoriqi, String fukuan,
			String fapiao, String ywzt, String xsjlBeizhu, Set<Xsmx> xsmxes) {
		this.yuangong = yuangong;
		this.kehu = kehu;
		this.xiadanriqi = xiadanriqi;
		this.fahuoqiqi = fahuoqiqi;
		this.khshouhuoriqi = khshouhuoriqi;
		this.fukuan = fukuan;
		this.fapiao = fapiao;
		this.ywzt = ywzt;
		this.xsjlBeizhu = xsjlBeizhu;
		this.xsmxes = xsmxes;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_xsjl")
	@SequenceGenerator(name="seq_xsjl",sequenceName="seq_xsjl_id",initialValue=1,allocationSize=1)
	@Column(name = "XSJL_ID", unique = true, nullable = false, precision = 22, scale = 0)
	public Integer getXsjlId() {
		return this.xsjlId;
	}

	public void setXsjlId(Integer xsjlId) {
		this.xsjlId = xsjlId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "YG_ID", nullable = false)
	public Yuangong getYuangong() {
		return this.yuangong;
	}

	public void setYuangong(Yuangong yuangong) {
		this.yuangong = yuangong;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "KEHU_ID", nullable = false)
	public Kehu getKehu() {
		return this.kehu;
	}

	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}

	@Column(name = "XIADANRIQI", length = 7)
	public Timestamp getXiadanriqi() {
		return this.xiadanriqi;
	}

	public void setXiadanriqi(Timestamp xiadanriqi) {
		this.xiadanriqi = xiadanriqi;
	}

	@Column(name = "FAHUOQIQI", length = 7)
	public Timestamp getFahuoqiqi() {
		return this.fahuoqiqi;
	}

	public void setFahuoqiqi(Timestamp fahuoqiqi) {
		this.fahuoqiqi = fahuoqiqi;
	}

	@Column(name = "KHSHOUHUORIQI", length = 7)
	public Timestamp getKhshouhuoriqi() {
		return this.khshouhuoriqi;
	}

	public void setKhshouhuoriqi(Timestamp khshouhuoriqi) {
		this.khshouhuoriqi = khshouhuoriqi;
	}

	@Column(name = "FUKUAN", length = 20)
	public String getFukuan() {
		return this.fukuan;
	}

	public void setFukuan(String fukuan) {
		this.fukuan = fukuan;
	}

	@Column(name = "FAPIAO", length = 20)
	public String getFapiao() {
		return this.fapiao;
	}

	public void setFapiao(String fapiao) {
		this.fapiao = fapiao;
	}

	@Column(name = "YWZT", nullable = false, length = 20)
	public String getYwzt() {
		return this.ywzt;
	}

	public void setYwzt(String ywzt) {
		this.ywzt = ywzt;
	}

	@Column(name = "XSJL_BEIZHU", length = 200)
	public String getXsjlBeizhu() {
		return this.xsjlBeizhu;
	}

	public void setXsjlBeizhu(String xsjlBeizhu) {
		this.xsjlBeizhu = xsjlBeizhu;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "xsjl")
	public Set<Xsmx> getXsmxes() {
		return this.xsmxes;
	}

	public void setXsmxes(Set<Xsmx> xsmxes) {
		this.xsmxes = xsmxes;
	}

}