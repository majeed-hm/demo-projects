package ch.ivyteam.ivy.workflow.ui.cases.AnyQueryCaseDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for FinishedCaseDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AnyQueryCaseDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RBoxPane headerBoxPane = null;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
@EmbeddedRichDialog(CaseDisplayListPanel.class) private ULCContainer caseDisplayListRDC = null;
/**
   * Create a new instance of FinishedCaseDisplayListPanel
   */
  public AnyQueryCaseDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes FinishedCaseDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(630,468));
        this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getCaseDisplayListRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
	}
	return headerBoxPane;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private ULCContainer getHeaderRDC()  {
	if (headerRDC == null) {
		headerRDC = RichDialogPanelFactory.create(HeaderPanel.class);
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		headerRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return headerRDC;
}

/**
 * This method initializes caseDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListPanel	
 */
private ULCContainer getCaseDisplayListRDC()  {
	if (caseDisplayListRDC == null) {
		caseDisplayListRDC = RichDialogPanelFactory.create(CaseDisplayListPanel.class);
		caseDisplayListRDC.setName("caseDisplayListRDC");
	}
	return caseDisplayListRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"