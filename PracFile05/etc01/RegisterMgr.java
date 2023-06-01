 package etc01;
 
 import java.sql.*;
 import java.util.*;

 public class RegisterMgr {
	 
	 private DBConnectionMgr pool;

		public RegisterMgr() {
			try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
 
    public Vector<RegisterBean> getRegisterList() {
	   Connection con = null;
	   PreparedStatement pstmt = null;
       ResultSet rs = null;
       Vector<RegisterBean> vlist = new Vector<RegisterBean>();
       try {
          con = pool.getConnection();
          String query = "select * from tblRegister";
          pstmt = con.prepareStatement(query);
          rs = pstmt.executeQuery();
		  while (rs.next()) {
             RegisterBean bean = new RegisterBean();
		 	 bean.setId (rs.getString("id"));
			 bean.setPwd (rs.getString("pwd"));
 			 bean.setName (rs.getString("name"));
 			 bean.setNum1 (rs.getString("num1"));
 			 bean.setNum2 (rs.getString("num2"));
 			 bean.setEmail (rs.getString("email"));
 			 bean.setPhone (rs.getString("phone"));
 			 bean.setZipcode (rs.getString("zipcode"));
 			 bean.setAddress (rs.getString("address"));
 			 bean.setJob (rs.getString("job"));
 			vlist.addElement(bean);
          }
       } catch (Exception ex) {
          System.out.println("Exception" + ex);
       } finally {
    	   pool.freeConnection(con, pstmt, rs);
       }
       return vlist;
    }
 }