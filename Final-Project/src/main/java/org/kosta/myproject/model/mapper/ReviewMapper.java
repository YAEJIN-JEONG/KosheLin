package org.kosta.myproject.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	void registerReview(ReviewVO reviewVO);

	List<ReviewVO> getAllReview();

}
