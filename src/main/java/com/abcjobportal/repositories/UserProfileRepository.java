package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobportal.entities.UserProfile;

@Repository
public interface UserProfileRepository extends JpaRepository<UserProfile, Integer> {

	// getting logged profile
	@Query("SELECT up FROM UserProfile up WHERE (up.email=:em OR up.username=:em) AND up.user_password=:pass")
	public UserProfile getUserHomepage(@Param("em") String emUser, @Param("pass") String password);

	// getting profile for resetting the password
	@Query("SELECT up FROM UserProfile up WHERE up.email=:em OR up.username=:em")
	public UserProfile resetPass(@Param("em") String email);

	// resetting the password
	@Transactional
	@Modifying
	@Query("UPDATE UserProfile up SET up.user_password=:ps WHERE up.email=:em")
	public void resetPassword(@Param("ps") String pass, @Param("em") String email);

	// getting public profile
	@Query("SELECT up FROM UserProfile up WHERE up.username=:pro")
	public UserProfile getPubProfile(@Param("pro") String profile);

	// searching user query
	@Query("SELECT up FROM UserProfile up WHERE " + " up.up_userPersonalInfo.fullname LIKE %:keyword%"
			+ " OR up.up_userAddress.city LIKE %:keyword%" + " OR up.up_userAddress.state LIKE %:keyword%"
			+ " OR up.up_userAddress.country_name LIKE %:keyword%")
	public List<UserProfile> getUserSearched(@Param("keyword") String keyword);

	// uploading user profile image
	@Transactional
	@Modifying
	@Query("UPDATE UserProfile up SET up.profile_image=:pi WHERE up.user_profile_id=:id")
	public void updateProfileImage(@Param("pi") String image, @Param("id") int userId);

	// updating user personal information
	@Transactional
	@Modifying
	@Query("UPDATE UserPersonalInfo upi SET upi.fullname=:fn, upi.gender=:gen, upi.marital_status=:ms, upi.phone=:phn, upi.dob=:dob, upi.national_identity=:ni, upi.education_status=:es, upi.job_status=:js, upi.biography=:bio WHERE upi.user_personal_info_id=:id")
	public void updateProfilePersonalInfo(@Param("fn") String fn, @Param("gen") String gen, @Param("ms") String ms,
			@Param("phn") String phn, @Param("dob") String dob, @Param("ni") String ni, @Param("es") String es,
			@Param("js") String js, @Param("bio") String bio, @Param("id") int userId);

	@Transactional
	@Modifying
	@Query("UPDATE UserAddress ua SET ua.street=:str, ua.city=:city, ua.state=:sta, ua.zip_code=:zc, ua.country_name=:cn WHERE ua.user_address_id=:id")
	public void updateProfileAddress(@Param("str") String str, @Param("city") String city, @Param("sta") String sta,
			@Param("zc") String zc, @Param("cn") String cn, @Param("id") int userId);

	// profile for passowrd revert
	@Query("SELECT up.user_password FROM UserProfile up WHERE up.email=:em")
	public String getProfileForRevertPassword(@Param("em") String email);

}
