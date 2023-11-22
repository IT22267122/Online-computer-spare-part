package com.entity;

public class ItemDtls {
	private int itemID;
	private String itemName;
	private String brand;
	private String price;
	private String category;
	private String status;
	private String photo;
	private String user_email;
	public ItemDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemDtls(String itemName, String brand, String price, String category, String status,
			String photo,String user_email) {
		super();
		this.itemName = itemName;
		this.brand = brand;
		this.price = price;
		this.category = category;
		this.status = status;
		this.photo = photo;
		this.user_email=user_email;
	}
	public int getItemID() {
		return itemID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getuser_email() {
		return user_email;
	}
	public void setusername(String user_email) {
		this.user_email = user_email;
	}
	@Override
	public String toString() {
		return "ItemDtls [itemID=" + itemID + ", itemName=" + itemName + ", brand=" + brand + ", price=" + price
				+ ", category=" + category + ", status=" + status + ", photo=" + photo + ", user_email=" + user_email + "]";
	}
	
	
	

}
