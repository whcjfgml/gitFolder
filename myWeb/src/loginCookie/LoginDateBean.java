package loginCookie;

import java.sql.Timestamp;

public class LoginDateBean {
	public class LoginBean{
		private String Id;
		private String password;
		private String name;
		private String numin1;
		private String numin2;
		private String email;
		private String blog;
		private Timestamp reg_date;
		public String getId() {
			return Id;
		}
		public void setId(String id) {
			Id = id;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getNumin1() {
			return numin1;
		}
		public void setNumin1(String numin1) {
			this.numin1 = numin1;
		}
		public String getNumin2() {
			return numin2;
		}
		public void setNumin2(String numin2) {
			this.numin2 = numin2;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getBlog() {
			return blog;
		}
		public void setBlog(String blog) {
			this.blog = blog;
		}
		public Timestamp getReg_date() {
			return reg_date;
		}
		public void setReg_date(Timestamp reg_date) {
			this.reg_date = reg_date;
		}
		
		
	}
}
