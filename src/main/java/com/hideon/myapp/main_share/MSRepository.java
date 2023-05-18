package com.hideon.myapp.main_share;


import com.hideon.myapp.main_share.Entity.MSEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MSRepository extends JpaRepository<MSEntity, Integer>{

}