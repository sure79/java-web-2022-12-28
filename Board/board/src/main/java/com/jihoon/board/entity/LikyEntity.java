package com.jihoon.board.entity;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.jihoon.board.entity.primaryKey.LikyPk;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "Liky")
@Table(name = "Liky")

public class LikyEntity {

    @EmbeddedId
    private LikyPk likyPk;
    
    private String userProfile;
    private String userNickname;
    
}
