package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx=new InitialContext();
			Context envContext=(Context) ctx.lookup("java:/comp/env");
			dataFactory=(DataSource)envContext.lookup("jdbc/oracle");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List listMembers() {
		List list=new ArrayList();
		try {
			con=dataFactory.getConnection();
			String query="select * from t_member order by joinDate desc";
			System.out.println("preparedStatement: "+query);
			pstmt=con.prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				String id=rs.getString("id");
				String pwd=rs.getString("pwd");
				String tier=rs.getString("tier");
				Date joinDate=rs.getDate("joinDate");
				MemberBean vo=new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setTier(tier);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void addMember(MemberBean memberBean) {
		try {
			Connection con=dataFactory.getConnection();
			String id=memberBean.getId();
			String pwd=memberBean.getPwd();
			String tier=memberBean.getTier();
			String query="insert into t_member";
			query+=" (id, pwd, tier)";
			query+=" values(?,?,?)";
			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, tier);
			pstmt.execute();
			pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
