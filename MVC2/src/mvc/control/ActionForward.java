package mvc.control;

public class ActionForward {
	private String url;
	private boolean redirect;

	public ActionForward() {
	}

	public ActionForward(String url) {
		this.url = url;
	}

	public ActionForward(String url, boolean redirect) {
		this.url = url;
		this.redirect = redirect;
	}

	public boolean isRedirecrt() {
		return redirect;
	}

	public void serRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isRedriect() {
		return redirect;
	}

	public void setRedriect(boolean redriect) {
		this.redirect = redriect;
	}
}
