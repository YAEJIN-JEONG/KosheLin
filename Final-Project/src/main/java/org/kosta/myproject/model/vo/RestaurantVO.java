package org.kosta.myproject.model.vo;

public class RestaurantVO {
	private String resNo;
	private String resName;
	private String resLoc;
	private String resImage;
	private String resInfo;
	private String resTel;
	private UserVO userVO;
	private String foodType;
	public RestaurantVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RestaurantVO(String resNo, String resName, String resLoc, String resImage, String resInfo, String resTel,
			UserVO userVO, String foodType) {
		super();
		this.resNo = resNo;
		this.resName = resName;
		this.resLoc = resLoc;
		this.resImage = resImage;
		this.resInfo = resInfo;
		this.resTel = resTel;
		this.userVO = userVO;
		this.foodType = foodType;
	}
	public String getResNo() {
		return resNo;
	}
	public void setResNo(String resNo) {
		this.resNo = resNo;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getResLoc() {
		return resLoc;
	}
	public void setResLoc(String resLoc) {
		this.resLoc = resLoc;
	}
	public String getResImage() {
		return resImage;
	}
	public void setResImage(String resImage) {
		this.resImage = resImage;
	}
	public String getResInfo() {
		return resInfo;
	}
	public void setResInfo(String resInfo) {
		this.resInfo = resInfo;
	}
	public String getResTel() {
		return resTel;
	}
	public void setResTel(String resTel) {
		this.resTel = resTel;
	}
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	public String getFoodType() {
		return foodType;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}
	@Override
	public String toString() {
		return "RestaurantVO [resNo=" + resNo + ", resName=" + resName + ", resLoc=" + resLoc + ", resImage=" + resImage
				+ ", resInfo=" + resInfo + ", resTel=" + resTel + ", userVO=" + userVO + ", foodType=" + foodType + "]";
	}
	
}
