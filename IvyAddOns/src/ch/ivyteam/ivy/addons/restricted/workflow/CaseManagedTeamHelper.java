package ch.ivyteam.ivy.addons.restricted.workflow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.data.technical.IvyResultStatus;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * 
 * @author Rifat Binjos, TI-Informatique
 * @since 05.08.2010
 *
 */

public class CaseManagedTeamHelper {

	/**
	 * user property that is used for the managed teams feature (team members and team manager)
	 * in order to store the user's managed teams
	 */
	private static final String MANAGED_TEAMS_PROPERTY_KEY = "xivy.addons.managedTeams";

	
	/**
	 * It sets case managed teams value to the case data 
	 * without permission restriction
	 * 
	 * @param caseManagedTeam is new value to set
	 * @param wfCase is the case on which data has to be modified
	 * @return true if sucessful, otherwise false
	 * @throws Exception  
	 */
	public static IvyResultStatus setCaseManagedTeam(final ICase wfCase, final String caseManagedTeam)
    {
		IvyResultStatus ivyResultStatus = new IvyResultStatus();
		ivyResultStatus.setSuccessful(true);
		
        try {
            Boolean successful = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>(){
                public Boolean call() throws Exception {
                	if (caseManagedTeam.length() > 0)
                	{
                		// set the managed team to the case
                		Ivy.log().info("Case {0} has now managed team {1} set.", wfCase.getIdentifier(), caseManagedTeam);
		            	wfCase.setCustomVarCharField5(caseManagedTeam);
		            	return true;
                	}
                	else
                	{
                		return false;
                	}
                }
            });
            
            ivyResultStatus.setSuccessful(successful);
            
            if (!successful)
            {
            	ivyResultStatus.setCode("XIVY_ADD_WF_002");
            	List<Object> args = new ArrayList<Object>();
            	args.add(wfCase.getIdentifier());
            	ivyResultStatus.setMessage(Ivy.cms().co("/messages/XIVY_ADD_WF_002", args));
            }
            
            // return the result
            return ivyResultStatus;

        } 
        catch (Exception e)
        {
        	ivyResultStatus.setSuccessful(false);
        	ivyResultStatus.setCode("XIVY_ADD_WF_002");
        	List<Object> args = new ArrayList<Object>();
        	args.add(wfCase.getIdentifier());
        	ivyResultStatus.setMessage(Ivy.cms().co("/messages/XIVY_ADD_WF_002", args));
        	ivyResultStatus.setJavaException(e);
        	return ivyResultStatus;
        }
    }
	

	
	
	
	/**
	 * It get case managed teams value from the case data
	 * without permission restriction
	 * 
	 * @param wfCase from which data has to be get
	 * @return the managed team available on the case; if no data, then the empty string is returned
	 * @throws Exception
	 */
	public static String getCaseManagedTeam(final ICase wfCase) throws Exception
    {
        try {
            return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>(){
                public String call() throws Exception {
                	return wfCase.getCustomVarCharField5() != null? wfCase.getCustomVarCharField5(): "";   
                }
            });

        } catch (Exception e)
        {
        	throw new Exception("Error during getting the managed teams on case " + wfCase.getIdentifier(), e);
        }
    }
	
	
	
	
	/**
	 * It returns the user's managed teams as a list
	 * 
	 * @return list of user's managed teams
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 * @throws Exception
	 */
	public static List<String> getSessionUserManagedTeamsAsList() throws EnvironmentNotAvailableException, PersistencyException, Exception
	{
		return getSessionUserManagedTeamsAsList(Ivy.session().getSessionUser());
	}
	
	
	/**
	 * It returns the user's managed teams as a list
	 * 
	 * @param user
	 * @return list of user's managed teams
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 * @throws Exception
	 */
	  public static List<String> getSessionUserManagedTeamsAsList(final IUser user) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<String>>()
	        {
	          public List<String> call() throws Exception
	          {
	            String propValue = "";
	            String propValueArray[] = null;

	            List<String> managedTeams = new ArrayList<String>();
	            
	            propValue = user.getProperty(MANAGED_TEAMS_PROPERTY_KEY);

	            Ivy.log().debug("The user {0} property {1} contains {2} value.", 
	            		user.getName(), MANAGED_TEAMS_PROPERTY_KEY, propValue);
	            
	            if (propValue != null && propValue.length() > 0)
	            {
	              propValueArray = propValue.split(",");
	              managedTeams = Arrays.asList(propValueArray);
	            }

	            return managedTeams;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during getting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
	
	  
	  /**
	   * It returns the user's managed teams as a string value
	   * 
	   * @param user from which data has to be get
	   * @return comma separated list of user's managed teams
	   * @throws EnvironmentNotAvailableException
	   * @throws PersistencyException
	   * @throws Exception
	   */
	  public static String getSessionUserManagedTeamsAsString(final IUser user) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
	        {
	          public String call() throws Exception
	          {
	            String managedTeams = "";
	            
	            managedTeams = user.getProperty(MANAGED_TEAMS_PROPERTY_KEY);

	            Ivy.log().debug("The user {0} property {1} contains {2} value.", 
	            		user.getName(), MANAGED_TEAMS_PROPERTY_KEY, managedTeams);
	            
	            return managedTeams != null? managedTeams: "";
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during getting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
 
	  
	  /**
	   * It set the user's managed teams with string value
	   * 
	   * @param user from which data has to be set
	   * @param managedTeams a list of managed teams as a string value comma separated to set
	   * @return true if operation successful; otherwise false
	   * @throws EnvironmentNotAvailableException
	   * @throws PersistencyException
	   * @throws Exception
	   */
	  public static Boolean setSessionUserManagedTeamsAsString(final IUser user, final String managedTeams) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  user.setProperty(MANAGED_TEAMS_PROPERTY_KEY, managedTeams);
	        	  Ivy.log().debug("User {0} has now {1} as managed teams value.", user.getName(), managedTeams);
	        	  return true;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during setting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
	  
}