package com.DAO;

import java.util.List;

import com.entity.ItemDtls;

public interface ItemDAO {
	public boolean addItems(ItemDtls i);
	
	public List<ItemDtls> getAllItems();
}
