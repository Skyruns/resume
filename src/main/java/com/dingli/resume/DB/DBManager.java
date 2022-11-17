package com.dingli.resume.DB;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    public static DBManager dbManager;

    private static String url = "jdbc:mysql://47.108.64.123:20010/xggr?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B8";
    private static String userName = "root";
    private static String password = "XGGRzjy123.";
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
//		Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, userName, password);
        System.out.println("连接数据库成功");
        return con;
    }
    //构造方法私有化
    private DBManager() throws ClassNotFoundException, SQLException {}

    //获取ChatDB实例
    public synchronized static DBManager getInstance() throws ClassNotFoundException, SQLException {
        if (dbManager ==null) {
            dbManager = new DBManager();
        }
        return dbManager;
    }

    //查询返回方法
    public ResultSet getResultSet(String sql) throws SQLException, ClassNotFoundException {
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;
        System.out.println();
        try {
            con = getConnection();
        } catch (Exception e) {
            System.out.println("数据库连接失败");
            e.printStackTrace();
            throw e;
        }

        try {
            stmt = (Statement) con.createStatement();
            System.out.println("执行查询语句:"+sql);
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            throw e;
        }
        return rs;
    }

    public int insertDB(String sql) throws ClassNotFoundException, SQLException{
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            throw e;
        }
        int flag = 0;

        System.out.println("执行插入更新:"+sql);
        try {
            flag = stmt.executeUpdate(sql);
            //System.out.println(sql+"语句执行成功");
        }catch(SQLException e) {
            System.out.println("语句执行失败");
            e.printStackTrace();
            throw e;
        }finally{
            con.close();
        }
        return flag;

    }
    //获取某个数据
    public String getResultSetValue(String sql) throws Exception{
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;
        String value = null;
        try {
            con = getConnection();
            stmt = (Statement) con.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                value = rs.getString(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            throw e;
        }finally {
            rs.close();
        }

        return value;
    }
    //是否有这个值
    public boolean getResultSetHasValue(String sql) throws Exception{
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;

        try {
            con = getConnection();
            stmt = (Statement) con.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                return true;
            }
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            throw e;
        }finally {
            rs.close();
        }

        return false;
    }
    //获取这一列
    public ArrayList<String> getResultSetValueList(String sql) throws Exception{
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;
        ArrayList<String> values = new ArrayList<String>();
        try {
            con = getConnection();
            stmt = (Statement) con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                values.add(rs.getString(1));
            }
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            throw e;
        }finally {
            rs.close();
        }

        return values;
    }
    //获取这一列
    public ArrayList<ArrayList<String>> getResultSetValueAllList(String sql,int col) throws Exception{
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;
        ArrayList<ArrayList<String>> values = new ArrayList<ArrayList<String>>();
        for(int i=0;i<col;i++) {
            values.add(new ArrayList<String>());
        }
        try {
            con = getConnection();
            stmt = (Statement) con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                for (int j=1; j<=col; j++) {
                    values.get(j-1).add(rs.getString(j));
                }

            }
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            throw e;
        }finally {
            rs.close();
        }

        return values;
    }

    public ResultSet getResultSet(String colname,String table) throws ClassNotFoundException, SQLException {
        ResultSet rs = null;
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            throw e;
        }
        String sql = "select "+colname+" from "+table;
        try {
            rs = stmt.executeQuery(sql);
            System.out.println("查询成功");
        }catch(Exception e) {
            System.out.println("查询失败");
            throw e;
        }
        return rs;
    }

    public ResultSet getResultSet(String colname,String table,String where) throws ClassNotFoundException, SQLException {
        ResultSet rs = null;
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            throw e;
        }
        String sql = "select "+colname+" from "+table+" where "+where;
        try {
            rs = stmt.executeQuery(sql);
            System.out.println("查询成功");
        }catch(Exception e) {
            System.out.println("查询失败");
            throw e;
        }
        return rs;
    }

    //插入数据
    public int insertDB(String table,String colname,String values) throws ClassNotFoundException, SQLException{
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            return 0;
//			throw e;
        }
        String sql = "insert into "+table+" ("+colname+") values ("+values+")";
        System.out.println(sql);
        int flag = 0;
        try {
            flag = stmt.executeUpdate(sql);
            System.out.println("插入成功");
        }catch(SQLException e) {
            System.out.println("插入失败");
            return 0;
//        	throw e;
        }finally{
            con.close();
        }
        return flag;
    }
    public int insertDB(String table,String values){
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            return 0;
//			throw e;
        }
        String sql = "insert into "+table+" values ("+values+")";
        System.out.println(sql);
        int flag = 0;
        try {
            flag = stmt.executeUpdate(sql);
            System.out.println("插入成功");
        }catch(SQLException e) {
            System.out.println("插入失败");
            return 0;
//        	throw e;
        }finally{
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return flag;
    }

    //	public int insertUpdateDB(String table,String values){
//		Statement stmt = null;
//		Connection con;
//		try {
//			con = getConnection();
//			stmt = (Statement)con.createStatement();
//		}catch(Exception e) {
//			System.out.println("连接数据库失败");
//			return 0;
////			throw e;
//		}
//        String sql = "insert into "+table+" values ("+values+") on duplicate key update ```";
//        System.out.println(sql);
//        int flag = 0;
//        try {
//        	flag = stmt.executeUpdate(sql);
//        	System.out.println("插入成功");
//        }catch(SQLException e) {
//        	System.out.println("插入失败");
//        	return 0;
////        	throw e;
//        }finally{
//        	try {
//				con.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//        }
//        return flag;
//	}

    //更新
    public boolean updateDB(String sql) throws ClassNotFoundException, SQLException{
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            return false;
//			throw e;
        }
        int count = 0;
        try {
            count = stmt.executeUpdate(sql);
            // System.out.println(sql+"语句执行成功");
        }catch(SQLException e) {
            System.out.println("语句执行失败");
            return false;
//        	throw e;
        }finally{
            con.close();
        }
        return (count>0);

    }

    public String getData() {
        System.out.println("测试数据打印");
        return "测试数据";
    }

    public int deleteDB(String table, String where) throws Exception {
        Statement stmt = null;
        Connection con;
        try {
            con = getConnection();
            stmt = (Statement)con.createStatement();
        }catch(Exception e) {
            System.out.println("连接数据库失败");
            throw e;
        }
        int flag = 0;
        if (where.isEmpty()) {
            throw new Exception("'where' is null");
        }
        String sql = "delete from "+table+" where "+where;
        try {
            flag = stmt.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println("语句执行失败");
            throw e;
        }finally{
            con.close();
        }
        return flag;
    }
    //查询test表的数据
    public void test() throws Exception {
        //查询
        try {
            Connection con = getConnection();
        }catch(Exception e) {
            e.printStackTrace();
        }
//		try {
//			ResultSet rs = getResultSet("*", "user");
//			while(rs.next()) {
////				int id = rs.getInt(1);
//				String id = rs.getString(1);
//				String value = rs.getString(2);
//				System.out.println(id+" "+value);
//			}
//
//        	rs.close();
//		} catch (ClassNotFoundException | SQLException e) {
//			// TODO 自动生成的 catch 块
//			e.printStackTrace();
//		}

        //建表
//		try {
//			insertDB("s", "", "2,2,3,4,5");
////			System.out.println("建表成功");
//		} catch (ClassNotFoundException | SQLException e) {
//			// TODO 自动生成的 catch 块
//			throw e;
////			e1.printStackTrace();
//		}

        //插入
//		try {
//
//			System.out.println(insert("test", "id,value", "8,'值8'"));
//		} catch (ClassNotFoundException e) {
//			// TODO 自动生成的 catch 块
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO 自动生成的 catch 块
//			e.printStackTrace();
//		}
//

    }
}
