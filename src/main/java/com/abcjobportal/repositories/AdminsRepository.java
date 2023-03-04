package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.Admins;

@Repository
public interface AdminsRepository extends JpaRepository<Admins, Integer> {

	// admin login info validate
	@Query("SELECT admin FROM Admins admin WHERE admin.admin_email=:em AND admin.admin_password=:ps")
	public Admins getLoginInfo(@Param("em") String admin_email, @Param("ps") String admin_password);

}
