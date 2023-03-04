package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.WebsiteAds;
import com.abcjobportal.repositories.WebsiteAdsRepository;

@Service
public class WebsiteAdsService {

	@Autowired
	private WebsiteAdsRepository websiteAdsRepository;

	// fetching all the ads
	public List<WebsiteAds> getAllAds() {
		return this.websiteAdsRepository.getAllAds(1);
	}

}
