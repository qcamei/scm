package com.genscript.gsscm.serv.dto;

import java.util.Date;

import javax.xml.bind.annotation.XmlType;

import org.apache.commons.lang.builder.ToStringBuilder;

import com.genscript.gsscm.common.constant.PdtSalesBaseType;
import com.genscript.gsscm.common.constant.WsConstants;

@XmlType(name = "ProductReportSrchDTO", namespace = WsConstants.NS)
public class ServiceReportSrchDTO {
	private String catalogNO;
	private Integer serviceId;
	private Date beginDate;
	private Date endDate;
	private Integer period;
	private PdtSalesBaseType saleBase;
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	
	public Integer getServiceId() {
		return serviceId;
	}


	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}


	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	/**
	 * @return the period
	 */
	public Integer getPeriod() {
		return period;
	}
	/**
	 * @param period the period to set
	 */
	public void setPeriod(Integer period) {
		this.period = period;
	}
	/**
	 * @return the saleBase
	 */
	public PdtSalesBaseType getSaleBase() {
		return saleBase;
	}
	/**
	 * @param saleBase the saleBase to set
	 */
	public void setSaleBase(PdtSalesBaseType saleBase) {
		this.saleBase = saleBase;
	}
	public String getCatalogNO() {
		return catalogNO;
	}
	public void setCatalogNO(String catalogNO) {
		this.catalogNO = catalogNO;
	}
	
	
}
