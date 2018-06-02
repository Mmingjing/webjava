


public class TestDBT {

	public static void main(String[] args)  {
		// TODO Auto-generated method stub
		BaseDao base=new BaseDao();
		String sql ="INSERT into stu1(name) VALUES('好可爱')";
		boolean zhenjia= base.excutBysql(sql);
		base.closeShiFang();
		if(zhenjia)
			System.out.println("成功");
		else 
			System.out.println("失败，请重试");
	
	}

}