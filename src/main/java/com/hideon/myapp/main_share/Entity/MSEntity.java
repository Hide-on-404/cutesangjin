package com.hideon.myapp.main_share.Entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Builder
@Table(name = "posts")
@Getter
@NoArgsConstructor
@AllArgsConstructor

public class MSEntity {
    @Id
    private Integer num;
    @Column(unique = true , nullable = true)
    private String user_id;
    @Column
    private String title;
    @Column
    private String content;
    @Column
    private Integer view_count;
    @Column
    private Date created_at;
    @Column
    private Date updated_at;
}
