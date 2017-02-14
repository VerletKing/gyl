package com.gyl.query.business.xsgl;

import java.util.Date;
import java.util.Map;

import com.gyl.query.BaseQuery;

public class XsysdzhubQuery extends BaseQuery {
	private Long ddh;
	private String gs;
	private Date rq;//日期
	private Date qsrq;//起算日期
	private String ks;//客商
	private String bm;//部门
	private String ywy;//业务员
	private String sxbz;//生效标志
	private String zdr;//制单人
	private Date zdrq;//制单日期
	private String shr;//审核人
	private Date shrq;//审核日期
	private String qzr;//签字人
	private Date qzrq;//签字日期
	private String xgr;//修改人
	private Date xgrq;//修改日期

	
	@Override
	public Map<String, Object> buildWhere() {
		if(this.ddh != null){
			this.map.put("ddh", ddh);
		}
		if(this.gs != null){
			this.map.put("gs", gs);
		}
		if(this.rq!=null){
			this.map.put("rq",rq);
		}
		if(this.qsrq!=null){
			this.map.put("qsrq",qsrq);
		}
		
		if(this.ks!=null){
			this.map.put("ks",ks);
		}
		if(this.bm!=null){
			this.map.put("bm",bm);
		}
		if(this.ywy!=null){
			this.map.put("ywy",ywy);
		}
		if(this.sxbz!=null){
			this.map.put("sxbz",sxbz);
		}
		
		if(this.zdr!=null){
			this.map.put("zdr",zdr);
		}
		if(this.zdrq!=null){
			this.map.put("zdrq",zdrq);
		}
		if(this.shr!=null){
			this.map.put("shr",shr);
		}
		if(this.shrq!=null){
			this.map.put("shrq",shrq);
		}
		if(this.qzr!=null){
			this.map.put("qzr",qzr);
		}
		if(this.qzrq!=null){
			this.map.put("qzrq",qzrq);
		}
		if(this.xgr!=null){
			this.map.put("xgr",xgr);
		}
		if(this.xgrq!=null){
			this.map.put("xgrq",xgrq);
		}
		return this.map;
	}
}
