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

import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.services.page.IPage;

import org.apache.commons.lang.StringUtils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author E.Santoboni
 */
public class CheckWidgetOutputterTag extends TagSupport {
	
	private static final Logger _logger = LoggerFactory.getLogger(CheckWidgetOutputterTag.class);
	
	@Override
	public int doStartTag() throws JspException {
		ServletRequest req =  this.pageContext.getRequest();
		RequestContext reqCtx = (RequestContext) req.getAttribute(RequestContext.REQCTX);
		IPage page = (IPage) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_PAGE);
		try {
			String widgetOutput[] = (String[]) reqCtx.getExtraParam("ShowletOutput");
			if(_frame <0 || _frame >= widgetOutput.length){
				_logger.error("Frame attribute {} exceeds the limit in the page {}", _frame, page.getCode());
				return SKIP_BODY;				
			}
			String output = widgetOutput[_frame];
			if (StringUtils.isBlank(output)) {
				return SKIP_BODY;
			} else {
				return EVAL_BODY_INCLUDE;
			}
		} catch (Throwable t) {
			String msg = "Error detected checking the output widget";
			_logger.error("Error detected checking the output widget", t);
			throw new JspException(msg, t);
		}
	}
	
	@Override
	public void release() {
		this._frame = -1;
	}
	
	public int getFrame() {
		return _frame;
	}
	public void setFrame(int frame) {
		this._frame = frame;
	}
	
	private int _frame;
	
}