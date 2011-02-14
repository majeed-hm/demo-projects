package ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.security.AuthenticationException;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectPanel;
import ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import ch.ivyteam.security.Password;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for SettingsPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SettingsEditPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane passwordGridBagLayoutPane = null;
private RGridBagLayoutPane emailGridBagLayoutPane = null;
private RCheckBox dailyTaskSummaryCheckBox = null;
private RCheckBox onNewTaskCheckBox = null;
private RComboBox languageComboBox = null;
private RButton okButton = null;
private RLabel loggedInAsLabel = null;
private RButton changePasswordButton = null;
private RLabel emailNotificationLanguageLabel = null;
private RButton cancelButton = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RGridBagLayoutPane caseSettingsGridBagLayoutPane = null;
private RLabel caseHierarchyLayoutLabel = null;
@EmbeddedRichDialog(CaseHierarchyLayoutSelectPanel.class) private ULCContainer casesHierarchyLayoutSelectRDC = null;
private RCheckBox casesSortByPriorityCheckBox = null;
private RCheckBox isMultipleCaseListCheckBox = null;
private RGridBagLayoutPane taskSettingsGridBagLayoutPane = null;
private RCheckBox tasksSortByPriorityCheckBox = null;
private RLabel taskHierarchyLayoutLabel = null;
@EmbeddedRichDialog(TaskHierarchyLayoutSelectPanel.class) private ULCContainer tasksHierarchyLayoutSelectRDC = null;
private RCheckBox isMultipleTaskListCheckBox = null;
private RCheckBox taskAutoHideMenuCheckBox = null;
private RLabel headerLabel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer tasksSeparatorRDC = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer casesSeparatorRDC = null;
private RLabel sortByPriorityLabel = null;
private RLabel isMultipleTaskListLabel = null;
private RLabel taskAutoHideMenuLabel = null;
private RLabel caseSortByPriorityLabel = null;
private RLabel isMultipleCaseListModeLabel = null;
/**
   * Create a new instance of SettingsPanel
   */
  public SettingsEditPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes SettingsPanel
   * @return void
   */
  public void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(700,475));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(712,432));
        this.add(getPasswordGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEmailGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTasksSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCasesSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 12, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskSettingsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseSettingsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 13, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 14, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHeaderLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 15, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes passwordGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getPasswordGridBagLayoutPane() {
	if (passwordGridBagLayoutPane == null) {
		RFiller horizontalFiller = new RFiller();
		horizontalFiller.setStyleProperties("{/weightX \"1\"}");
		passwordGridBagLayoutPane = new RGridBagLayoutPane();
		passwordGridBagLayoutPane.setName("passwordGridBagLayoutPane");
		passwordGridBagLayoutPane.add(getLoggedInAsLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		passwordGridBagLayoutPane.add(getChangePasswordButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		passwordGridBagLayoutPane.add(horizontalFiller, new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return passwordGridBagLayoutPane;
}

/**
 * This method initializes emailGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getEmailGridBagLayoutPane() {
	if (emailGridBagLayoutPane == null) {
		emailGridBagLayoutPane = new RGridBagLayoutPane();
		emailGridBagLayoutPane.setName("emailGridBagLayoutPane");
		emailGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "eMail notification", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		emailGridBagLayoutPane.add(getDailyTaskSummaryCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		emailGridBagLayoutPane.add(getOnNewTaskCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		emailGridBagLayoutPane.add(getLanguageComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		emailGridBagLayoutPane.add(getEmailNotificationLanguageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return emailGridBagLayoutPane;
}

/**
 * This method initializes dailyTaskSummaryCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getDailyTaskSummaryCheckBox() {
	if (dailyTaskSummaryCheckBox == null) {
		dailyTaskSummaryCheckBox = new RCheckBox();
		dailyTaskSummaryCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/dailyTaskSummary\")%>");
		dailyTaskSummaryCheckBox.setStyleProperties("{/insetsLeft \"3\"}");
		dailyTaskSummaryCheckBox.setName("dailyTaskSummaryCheckBox");
	}
	return dailyTaskSummaryCheckBox;
}

/**
 * This method initializes onNewTaskCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getOnNewTaskCheckBox() {
	if (onNewTaskCheckBox == null) {
		onNewTaskCheckBox = new RCheckBox();
		onNewTaskCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/onNewTask\")%>");
		onNewTaskCheckBox.setStyleProperties("{/insetsLeft \"3\"}");
		onNewTaskCheckBox.setName("onNewTaskCheckBox");
	}
	return onNewTaskCheckBox;
}

/**
 * This method initializes languageComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getLanguageComboBox() {
	if (languageComboBox == null) {
		languageComboBox = new RComboBox();
		languageComboBox.setName("languageComboBox");
		languageComboBox.setStyleProperties("{/weightX \"1\"}");
		languageComboBox.setModelConfiguration("{/result \"\"/version \"2.0\"/icon \"\"/tooltip \"\"}");
	}
	return languageComboBox;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		okButton.setStyleProperties("{/anchor \"NORTHEAST\"}");
		okButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		okButton.setName("okButton");
	}
	return okButton;
}
/**
 * Logs in the current session user
 * @param session session
 * @param userName user name
 * @param password password
 * @return
 * @throws PersistencyException
 */
public AuthenticationException login(ISession session, String userName, String password) throws PersistencyException
{
	try
	{
		session.authenticateSessionUser(userName, new Password(password));
		return null;
	}
	catch(AuthenticationException ex)
	{
		return ex;
	}
}

/**
 * This method initializes loggedInAsLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLoggedInAsLabel() {
	if (loggedInAsLabel == null) {
		loggedInAsLabel = new RLabel();
		loggedInAsLabel.setName("loggedInAsLabel");
		loggedInAsLabel.setText("Logged in as....");
	}
	return loggedInAsLabel;
}

/**
 * This method initializes changePasswordButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getChangePasswordButton() {
	if (changePasswordButton == null) {
		changePasswordButton = new RButton();
		changePasswordButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword\")%>");
		changePasswordButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword\")%>");
		changePasswordButton.setName("changePasswordButton");
	}
	return changePasswordButton;
}

/**
 * This method initializes emailNotificationLanguageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEmailNotificationLanguageLabel() {
	if (emailNotificationLanguageLabel == null) {
		emailNotificationLanguageLabel = new RLabel();
		emailNotificationLanguageLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/emailLanguage\")%>");
		emailNotificationLanguageLabel.setStyleProperties("{/weightX \"1\"}");
		emailNotificationLanguageLabel.setName("emailNotificationLanguageLabel");
	}
	return emailNotificationLanguageLabel;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes actionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getActionsFlowLayoutPane() {
	if (actionsFlowLayoutPane == null) {
		actionsFlowLayoutPane = new RFlowLayoutPane();
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
		actionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		actionsFlowLayoutPane.add(getOkButton());
		actionsFlowLayoutPane.add(getCancelButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes caseSettingsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseSettingsGridBagLayoutPane() {
	if (caseSettingsGridBagLayoutPane == null) {
		RFiller hFiller1 = new RFiller();
		hFiller1.setStyleProperties("{/weightX \"0.25\"}");
		RFiller userMenuFiller111 = new RFiller();
		userMenuFiller111.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeHeight \"1\"}");
		userMenuFiller111.setStyle("strutW25H10");
		RFiller aFiller = new RFiller();
		aFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		aFiller.setVisible(false);
		aFiller.setStyle("horizontalStrut250");
		caseSettingsGridBagLayoutPane = new RGridBagLayoutPane();
		caseSettingsGridBagLayoutPane.setName("caseSettingsGridBagLayoutPane");
		caseSettingsGridBagLayoutPane.add(getCaseHierarchyLayoutLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(getCasesHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(getCasesSortByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(getIsMultipleCaseListCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(userMenuFiller111, new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(getCaseSortByPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(getIsMultipleCaseListModeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSettingsGridBagLayoutPane.add(hFiller1, new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseSettingsGridBagLayoutPane;
}

/**
 * This method initializes caseHierarchyLayoutLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseHierarchyLayoutLabel() {
	if (caseHierarchyLayoutLabel == null) {
		caseHierarchyLayoutLabel = new RLabel();
		caseHierarchyLayoutLabel.setName("caseHierarchyLayoutLabel");
		caseHierarchyLayoutLabel.setStyle("rightAlignedLabel");
		caseHierarchyLayoutLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/chooseCaseHierarchyLayout\")%>\n\n");
	}
	return caseHierarchyLayoutLabel;
}

/**
 * This method initializes casesHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectPanel	
 */
private ULCContainer getCasesHierarchyLayoutSelectRDC()  {
	if (casesHierarchyLayoutSelectRDC == null) {
		casesHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(CaseHierarchyLayoutSelectPanel.class);
		casesHierarchyLayoutSelectRDC.setName("casesHierarchyLayoutSelectRDC");
		casesHierarchyLayoutSelectRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return casesHierarchyLayoutSelectRDC;
}

/**
 * This method initializes casesSortByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getCasesSortByPriorityCheckBox() {
	if (casesSortByPriorityCheckBox == null) {
		casesSortByPriorityCheckBox = new RCheckBox();
		casesSortByPriorityCheckBox.setName("casesSortByPriorityCheckBox");
//		casesSortByPriorityCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		casesSortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
//		casesSortByPriorityCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
	}
	return casesSortByPriorityCheckBox;
}

/**
 * This method initializes isMultipleCaseListCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getIsMultipleCaseListCheckBox() {
	if (isMultipleCaseListCheckBox == null) {
		isMultipleCaseListCheckBox = new RCheckBox();
		isMultipleCaseListCheckBox.setName("isMultipleCaseListCheckBox");
//		isMultipleCaseListCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		isMultipleCaseListCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/multipleCaseListMode\")%>");
//		isMultipleCaseListCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
	}
	return isMultipleCaseListCheckBox;
}

/**
 * This method initializes taskSettingsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTaskSettingsGridBagLayoutPane() {
	if (taskSettingsGridBagLayoutPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"0.25\"}");
		RFiller userMenuFiller11 = new RFiller();
		userMenuFiller11.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeHeight \"1\"}");
		userMenuFiller11.setStyle("strutW25H10");
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		aFiller1.setVisible(false);
		aFiller1.setStyle("horizontalStrut250");
		taskSettingsGridBagLayoutPane = new RGridBagLayoutPane();
		taskSettingsGridBagLayoutPane.setName("taskSettingsGridBagLayoutPane");
		taskSettingsGridBagLayoutPane.setName("taskConfigurationGridBagLayoutPane");
		taskSettingsGridBagLayoutPane.add(getTasksSortByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getTaskHierarchyLayoutLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getTasksHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getIsMultipleTaskListCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getTaskAutoHideMenuCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(userMenuFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getSortByPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getIsMultipleTaskListLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(getTaskAutoHideMenuLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskSettingsGridBagLayoutPane.add(hFiller, new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return taskSettingsGridBagLayoutPane;
}

/**
 * This method initializes tasksSortByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTasksSortByPriorityCheckBox() {
	if (tasksSortByPriorityCheckBox == null) {
		tasksSortByPriorityCheckBox = new RCheckBox();
		tasksSortByPriorityCheckBox.setName("tasksSortByPriorityCheckBox");
//		tasksSortByPriorityCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
		tasksSortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
//		tasksSortByPriorityCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
	}
	return tasksSortByPriorityCheckBox;
}

/**
 * This method initializes taskHierarchyLayoutLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskHierarchyLayoutLabel() {
	if (taskHierarchyLayoutLabel == null) {
		taskHierarchyLayoutLabel = new RLabel();
		taskHierarchyLayoutLabel.setName("taskHierarchyLayoutLabel");
		taskHierarchyLayoutLabel.setStyle("rightAlignedLabel");
		taskHierarchyLayoutLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/chooseTaskHierarchyLayout\")%>\n");
	}
	return taskHierarchyLayoutLabel;
}

/**
 * This method initializes tasksHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel	
 */
private ULCContainer getTasksHierarchyLayoutSelectRDC()  {
	if (tasksHierarchyLayoutSelectRDC == null) {
		tasksHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(TaskHierarchyLayoutSelectPanel.class);
		tasksHierarchyLayoutSelectRDC.setName("tasksHierarchyLayoutSelectRDC");
		tasksHierarchyLayoutSelectRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return tasksHierarchyLayoutSelectRDC;
}

/**
 * This method initializes isMultipleTaskListCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getIsMultipleTaskListCheckBox() {
	if (isMultipleTaskListCheckBox == null) {
		isMultipleTaskListCheckBox = new RCheckBox();
		isMultipleTaskListCheckBox.setName("isMultipleTaskListCheckBox");
//		isMultipleTaskListCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
		isMultipleTaskListCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/multipleTaskListMode\")%>");
//		isMultipleTaskListCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
	}
	return isMultipleTaskListCheckBox;
}

/**
 * This method initializes taskAutoHideMenuCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTaskAutoHideMenuCheckBox() {
	if (taskAutoHideMenuCheckBox == null) {
		taskAutoHideMenuCheckBox = new RCheckBox();
		taskAutoHideMenuCheckBox.setName("taskAutoHideMenuCheckBox");
//		taskAutoHideMenuCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
		taskAutoHideMenuCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/autoHideMenuMode\")%>");
//		taskAutoHideMenuCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
	}
	return taskAutoHideMenuCheckBox;
}

/**
 * This method initializes headerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getHeaderLabel() {
	if (headerLabel == null) {
		headerLabel = new RLabel();
		headerLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/noSettingsPermission\")%>");
		headerLabel.setStyle("warning");
		headerLabel.setName("headerLabel");
	}
	return headerLabel;
}

/**
 * This method initializes tasksSeparatorRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getTasksSeparatorRDC()  {
	if (tasksSeparatorRDC == null) {
		tasksSeparatorRDC = RichDialogPanelFactory.create(SeparatorPanel.class);
		tasksSeparatorRDC.setName("tasksSeparatorRDC");
		tasksSeparatorRDC.setStyleProperties("{/insetsTop \"10\"}");
	}
	return tasksSeparatorRDC;
}

/**
 * This method initializes casesSeparatorRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getCasesSeparatorRDC()  {
	if (casesSeparatorRDC == null) {
		casesSeparatorRDC = RichDialogPanelFactory.create(SeparatorPanel.class);
		casesSeparatorRDC.setName("casesSeparatorRDC");
		casesSeparatorRDC.setStyleProperties("{/insetsTop \"10\"}");
	}
	return casesSeparatorRDC;
}

/**
 * This method initializes sortByPriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSortByPriorityLabel() {
	if (sortByPriorityLabel == null) {
		sortByPriorityLabel = new RLabel();
		sortByPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
		sortByPriorityLabel.setStyle("rightAlignedLabel");
		sortByPriorityLabel.setVisible(false);
		sortByPriorityLabel.setName("sortByPriorityLabel");
	}
	return sortByPriorityLabel;
}

/**
 * This method initializes isMultipleTaskListLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIsMultipleTaskListLabel() {
	if (isMultipleTaskListLabel == null) {
		isMultipleTaskListLabel = new RLabel();
		isMultipleTaskListLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/multipleTaskListMode\")%>");
		isMultipleTaskListLabel.setStyle("rightAlignedLabel");
		isMultipleTaskListLabel.setVisible(false);
		isMultipleTaskListLabel.setName("isMultipleTaskListLabel");
	}
	return isMultipleTaskListLabel;
}

/**
 * This method initializes taskAutoHideMenuLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskAutoHideMenuLabel() {
	if (taskAutoHideMenuLabel == null) {
		taskAutoHideMenuLabel = new RLabel();
		taskAutoHideMenuLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/autoHideMenuMode\")%>");
		taskAutoHideMenuLabel.setStyle("rightAlignedLabel");
		taskAutoHideMenuLabel.setVisible(false);
		taskAutoHideMenuLabel.setName("taskAutoHideMenuLabel");
	}
	return taskAutoHideMenuLabel;
}

/**
 * This method initializes caseSortByPriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseSortByPriorityLabel() {
	if (caseSortByPriorityLabel == null) {
		caseSortByPriorityLabel = new RLabel();
		caseSortByPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
		caseSortByPriorityLabel.setStyle("rightAlignedLabel");
		caseSortByPriorityLabel.setVisible(false);
		caseSortByPriorityLabel.setName("caseSortByPriorityLabel");
	}
	return caseSortByPriorityLabel;
}

/**
 * This method initializes isMultipleCaseListModeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIsMultipleCaseListModeLabel() {
	if (isMultipleCaseListModeLabel == null) {
		isMultipleCaseListModeLabel = new RLabel();
		isMultipleCaseListModeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/multipleCaseListMode\")%>");
		isMultipleCaseListModeLabel.setStyle("rightAlignedLabel");
		isMultipleCaseListModeLabel.setVisible(false);
		isMultipleCaseListModeLabel.setName("isMultipleCaseListModeLabel");
	}
	return isMultipleCaseListModeLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"