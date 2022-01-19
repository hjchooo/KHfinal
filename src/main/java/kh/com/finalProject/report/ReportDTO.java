package kh.com.finalProject.report;

public class ReportDTO {
	private int report_seq;
	private String report_value;
	private String report_type;
	private String report_writer_id;
	private String reported_person;
	private String report_content;
	
	public ReportDTO() {}
	
	public ReportDTO(int report_seq, String report_value, String report_type, String report_writer_id,
			String reported_person, String report_content) {
		super();
		this.report_seq = report_seq;
		this.report_value = report_value;
		this.report_type = report_type;
		this.report_writer_id = report_writer_id;
		this.reported_person = reported_person;
		this.report_content = report_content;
	}

	public int getReport_seq() {
		return report_seq;
	}

	public void setReport_seq(int report_seq) {
		this.report_seq = report_seq;
	}

	public String getReport_value() {
		return report_value;
	}

	public void setReport_value(String report_value) {
		this.report_value = report_value;
	}

	public String getReport_type() {
		return report_type;
	}

	public void setReport_type(String report_type) {
		this.report_type = report_type;
	}

	public String getReport_writer_id() {
		return report_writer_id;
	}

	public void setReport_writer_id(String report_writer_id) {
		this.report_writer_id = report_writer_id;
	}

	public String getReported_person() {
		return reported_person;
	}

	public void setReported_person(String reported_person) {
		this.reported_person = reported_person;
	}

	public String getReport_content() {
		return report_content;
	}

	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}

	@Override
	public String toString() {
		return "ReportDTO [report_seq=" + report_seq + ", report_value=" + report_value + ", report_type=" + report_type
				+ ", report_writer_id=" + report_writer_id + ", reported_person=" + reported_person
				+ ", report_content=" + report_content + "]";
	}

}
