


public class TestDBT {

	public static void main(String[] args)  {
		// TODO Auto-generated method stub
		BaseDao base=new BaseDao();
		String sql ="INSERT into stu1(name) VALUES('�ÿɰ�')";
		boolean zhenjia= base.excutBysql(sql);
		base.closeShiFang();
		if(zhenjia)
			System.out.println("�ɹ�");
		else 
			System.out.println("ʧ�ܣ�������");
	
	}

}