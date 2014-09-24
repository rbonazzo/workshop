/*
*
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
* This file is part of Entando Enterprise Edition software.
* You can redistribute it and/or modify it
* under the terms of the Entando's EULA
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
*/
package org.entando.entando.aps.tags;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.services.page.IPage;

/**
 * @author E.Santoboni
 */
public class WidgetTag extends TagSupport {

	private static final Logger _logger = LoggerFactory.getLogger(WidgetTag.class);
	
	@Override
	public int doEndTag() throws JspException {
		ServletRequest req =  this.pageContext.getRequest();
		RequestContext reqCtx = (RequestContext) req.getAttribute(RequestContext.REQCTX);
		IPage page = (IPage) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_PAGE);
		try {
			String widgetOutput[] = (String[]) reqCtx.getExtraParam("ShowletOutput");
			if(_frame <0 || _frame >= widgetOutput.length){
				_logger.error("Frame attribute {} exceeds the limit in the page {}", _frame, page.getCode());
				String msg = "Frame attribute =" + _frame + " exceeds the limit in the page " + page.getCode();
				throw new JspException(msg);			
			}
			String widget = widgetOutput[_frame];
			if (null == widget) {
				widget = "";
			}
			if (this.getVar() != null) {
				this.pageContext.setAttribute(this.getVar(), widget);
			} else {
				this.pageContext.getOut().print(widget);
			}
		} catch (Throwable t) {
			String msg = "Error detected in the inclusion of the output widget";
			_logger.error("Error detected in the inclusion of the output widget", t);
			throw new JspException(msg, t);
		}
		return EVAL_PAGE;
	}
	
	@Override
	public void release() {
		this._frame = -1;
		this._var = null;
	}
	
	public int getFrame() {
		return _frame;
	}
	public void setFrame(int frame) {
		this._frame = frame;
	}
	
	public String getVar() {
		return _var;
	}
	public void setVar(String var) {
		this._var = var;
	}
	
	private int _frame;
	private String _var;
	
}
