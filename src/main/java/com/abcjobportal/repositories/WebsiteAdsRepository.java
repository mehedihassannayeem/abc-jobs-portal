package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.WebsiteAds;

@Repository
public interface WebsiteAdsRepository extends JpaRepository<WebsiteAds, Integer> {

	@Query("SELECT wa FROM WebsiteAds wa WHERE wa.ads_show=:dis")
	public List<WebsiteAds> getAllAds(@Param("dis") int dis);

}
