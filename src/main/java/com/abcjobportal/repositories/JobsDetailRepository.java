package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobsDetail;

@Repository
public interface JobsDetailRepository extends JpaRepository<JobsDetail, Integer> {

	// searching matched jobs
	@Query("SELECT jd FROM JobsDetail jd WHERE " + " jd.job_category LIKE %:wh% OR jd.job_category LIKE %:pl% "
			+ " OR jd.job_title LIKE %:wh% OR jd.job_title LIKE %:pl%"
			+ " OR jd.employment_status LIKE %:wh% OR jd.employment_status LIKE %:pl%"
			+ " OR jd.experience LIKE %:wh% OR jd.experience LIKE %:pl%"
			+ " OR jd.gender LIKE %:wh% OR jd.gender LIKE %:pl%"
			+ " OR jd.job_description.job_location LIKE %:wh% OR jd.job_description.job_location LIKE %:pl%"
			+ " OR jd.job_description.work_place LIKE %:wh% OR jd.job_description.work_place LIKE %:pl%"
			+ " OR jd.job_com.com_name LIKE %:wh% OR jd.job_com.com_name LIKE %:pl%"
			+ " OR jd.job_com.com_address LIKE %:wh% OR jd.job_com.com_address LIKE %:pl%")
	public List<JobsDetail> getMatchedJobs(@Param("wh") String what, @Param("pl") String where);

	@Query("SELECT jd FROM JobsDetail jd WHERE jd.job_category=:cat")
	public List<JobsDetail> getCategoryJobs(@Param("cat") String cat);

}
