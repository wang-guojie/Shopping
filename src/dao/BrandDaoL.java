package dao;

import dao.impl.BrandDaoImplL;
import entity.Brand;
import entity.Commodity;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrandDaoL extends BaseDaoL implements BrandDaoImplL {
    @Override
    public List<Brand> listBrand() {
        List<Integer> list = new Commodity_infoDaoL().getComm();
        List<Brand> brands = new ArrayList<Brand>();
        Object [] obj = new Object[list.size()];
        String hao = "";
        for(int i = 0 ; i < list.size() ; i ++ ){
            obj[i] = list.get(i);
            if((i+1)==(list.size())){
                hao += "?";
            }else {
                hao += "?,";
            }
        }
        this.executeQuery("SELECT * FROM brand WHERE Brand_id IN ("+hao+")",obj);
        try {
            while (rs.next()){
                Brand brand = new Brand();
                brand.setBrand_id(rs.getInt("Brand_id"));
                brand.setBrand_name(rs.getString("Brand_name"));
                
                brands.add(brand);
            }
        }catch (SQLException sql){
            sql.printStackTrace();
        }finally {
            this.closeAll();
        }
        return brands;
    }
    

    	


	@Override
	public List<Brand> getBrandAll() {
    		List<Brand> list=new ArrayList<Brand>();
    		String sql="SELECT * FROM brand where Commod_id=1 and Brand_type=0 limit 10";
		return getBrands(list, sql);
	}

	@Override
	public List<Brand> getBrandAll2() {
		List<Brand> list=new ArrayList<Brand>();
		String sql="SELECT * FROM brand where Commod_id=2 and Brand_type=0 limit 10";
		return getBrands(list, sql);
	}

	@Override
	public List<Brand> getBrandAll3() {
		List<Brand> list=new ArrayList<Brand>();
		String sql="SELECT * FROM brand where Commod_id=3 and Brand_type=0 limit 10";
		return getBrands(list, sql);
	}

	
	
	
	private List<Brand> getBrands(List<Brand> list, String sql) {
		executeQuery(sql, null);
		try {
			while(rs.next()){
				Brand b=new Brand();
				b.setBrand_id(rs.getInt(1));
				b.setBrand_name(rs.getString(2));
				
				list.add(b);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}





	@Override
	public List<Brand> selectAll() {
		List<Brand> list=new ArrayList<Brand>();
		String sql="SELECT Brand_id,Brand_name FROM `brand` where Brand_type=0";
		executeQuery(sql, null);
		try {
			while(rs.next()){
				Brand b=new Brand();
				b.setBrand_id(rs.getInt(1));
				b.setBrand_name(rs.getString(2));
				list.add(b);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}





	@Override
	public int getBrandAdd(Brand b) {
		String sql="INSERT `brand`VALUES(NULL,?,?,default)";
		Object[] param={b.getBrand_name(),b.getComm().getCommodity_id()};
		return executeUpdate(sql, param);
	}





	@Override
	public List<Commodity> selectComm() {
		List<Commodity> list=new ArrayList<Commodity>();
		String sql="SELECT * FROM `commodity`";
		executeQuery(sql, null);
		try {
			while(rs.next()){
				Commodity c=new Commodity();
				c.setCommodity_id(rs.getInt(1));
				c.setCommodity_name(rs.getString(2));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}





	@Override
	public int getdelete(int id) {
		String sql="UPDATE `commodity_info` SET commodity_dyoptype=1 WHERE commodity_millbrand_id=?";
		Object[] param={id};
		return executeUpdate(sql, param);
	}


	@Override
	public int updateBrand(int id) {
		String sql="UPDATE `brand` SET Brand_type=1 WHERE Brand_id=?";
		Object[] param={id};
		return executeUpdate(sql, param);
	}

	@Override
	public int updateSJBrand(int id) {
		String sql="UPDATE `brand` SET Brand_type=0 WHERE Brand_id=?";
		Object[] param={id};
		return executeUpdate(sql, param);
	}

	@Override
	public int getdeletesp(int id) {
		String sql="DELETE  FROM `commodity_info` WHERE commodity_millbrand_id=?";
		Object[] param={id};
		return executeUpdate(sql, param);
	}





	@Override
	public List<Brand> selSJBrand() {
		List<Brand> list=new ArrayList<Brand>();
		String sql="SELECT Brand_id,Brand_name FROM `brand` where Brand_type=1";
		executeQuery(sql, null);
		try {
			while(rs.next()){
				Brand b=new Brand();
				b.setBrand_id(rs.getInt(1));
				b.setBrand_name(rs.getString(2));
				list.add(b);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return list;
	}





	@Override
	public int selectXJBrand(int id) {
		int count=0;
		String sql="SELECT commodity_info_id FROM `commodity_info` WHERE commodity_millbrand_id=(SELECT Brand_id FROM `brand` WHERE Brand_type=1) AND commodity_info_id=?";
		Object[] param={id};
		executeQuery(sql, param);
		try {
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return count;
	}





	





	





	
}
