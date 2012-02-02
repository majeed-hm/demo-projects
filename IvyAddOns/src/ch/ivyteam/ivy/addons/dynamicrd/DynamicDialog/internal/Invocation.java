package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * Gives possibilities to invoke UI logic method from java code.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.09.2008
 */
public final class Invocation
{
  private Invocation()
  {
  }

  @SuppressWarnings("restriction")
  private static Object[] callMethod(IRichDialogPanel dialogPanel, String method, Object[] params)
          throws InvocationTargetException, NoSuchMethodException
  {
    Object[] result;

    result = null;

    if (dialogPanel != null)
    {
      try
      {
        result = dialogPanel.getPanelAPI().callMethod(method, params);
      }
      catch (ch.ivyteam.ivy.scripting.restricted.resume.SuspendedMethodCallSignal e)
      {
        // Nothing to do
      }
    }

    return result;
  }

  /**
   * Searches which panel should be invoked. The parent panel of DynamicDialog and its children are added to
   * the list.
   * 
   * @param panel dynamic dialog panel from where the target is searched
   * @return panel list of targets
   */
  public static List<IRichDialogPanel> getInvocationTargets(DynamicDialogPanel panel)
  {
    IRichDialogPanel parent;
    List<IRichDialogPanel> dialogPanels;
    ULCContainer temp;

    dialogPanels = new ArrayList<IRichDialogPanel>();
    parent = null;
    temp = panel;

    dialogPanels.add(panel);
    do
    {
      temp = temp.getParent();

      if (temp instanceof IRichDialogPanel && !(temp instanceof DynamicDialogPanel))
      {
        parent = (IRichDialogPanel) temp;
        break;
      }
    } while (temp != null);

    if (parent != null)
    {
      dialogPanels.add(parent);

      for (ULCComponent component : parent.getPanelAPI().getPanelAsUlcContainer().getComponents())
      {
        if (component instanceof IRichDialogPanel && component != panel)
        {
          dialogPanels.add((IRichDialogPanel) component);
        }
      }
    }
    for (ULCComponent component : panel.getControllerDisplay().getComponents())
    {
      if (component instanceof IRichDialogPanel)
      {
        dialogPanels.add((IRichDialogPanel) component);
      }
    }
    return dialogPanels;
  }

  /**
   * Invokes the specified UI method with its parameters. Only invokes the first method found in the panels given.
   * 
   * @param method UI method name
   * @param params UI method params
   * @param dialogPanels panel list
   * @throws InvocationTargetException
   */
  public static void invoke(String method, Object[] params, List<IRichDialogPanel> dialogPanels)
          throws InvocationTargetException
  {
    boolean methodFound;
    NoSuchMethodException noSuchMethodException;

    methodFound = false;
    noSuchMethodException = null;

    if (method != null && !method.equals("") && dialogPanels != null)
    {
      for (IRichDialogPanel dialogPanel : dialogPanels)
      {
        try
        {
          callMethod(dialogPanel, method, params);
          methodFound = true;
        }
        catch (NoSuchMethodException e)
        {
          noSuchMethodException = e;
        }
      }
    }
    if (!methodFound)
    {
      Ivy.log().debug(
              noSuchMethodException != null ? noSuchMethodException.getLocalizedMessage()
                      : "Unable to invoke method : " + method);
    }
  }
}
