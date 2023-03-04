package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "website_ads")
public class WebsiteAds {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int website_ads_serial;
	private String ads_company;
	private String ads_image;
	private String ads_link;
	private int ads_show;

	public int getWebsite_ads_serial() {
		return website_ads_serial;
	}

	public void setWebsite_ads_serial(int website_ads_serial) {
		this.website_ads_serial = website_ads_serial;
	}

	public String getAds_company() {
		return ads_company;
	}

	public void setAds_company(String ads_company) {
		this.ads_company = ads_company;
	}

	public String getAds_image() {
		return ads_image;
	}

	public void setAds_image(String ads_image) {
		this.ads_image = ads_image;
	}

	public String getAds_link() {
		return ads_link;
	}

	public void setAds_link(String ads_link) {
		this.ads_link = ads_link;
	}

	public int getAds_show() {
		return ads_show;
	}

	public void setAds_show(int ads_show) {
		this.ads_show = ads_show;
	}

}
