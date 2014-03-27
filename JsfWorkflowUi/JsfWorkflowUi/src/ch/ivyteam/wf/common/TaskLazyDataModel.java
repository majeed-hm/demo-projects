package ch.ivyteam.wf.common;

import java.util.EnumSet;
import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;

public class TaskLazyDataModel extends LazyDataModel<ITask> {
	
	private IPropertyFilter<TaskProperty> taskFilter;
	private Boolean isHistory;

	@Override
	public List<ITask> load(int first, int pageSize, String sortField,
			SortOrder sortOrder, Map<String, String> filters) {
		Ivy ivy = Ivy.getInstance();
		IQueryResult<ITask> queryResult;
		
		List<PropertyOrder<TaskProperty>> taskPropertyOrder = PropertyOrder.create(getTaskProperty(sortField), getTaskDirection(sortOrder));
		if(isHistory)
		{
			queryResult = ivy.session.findWorkedOnTasks(taskFilter, taskPropertyOrder, 
					first, pageSize, true);
		}
		else
		{
			queryResult = ivy.session.findWorkTasks(taskFilter, taskPropertyOrder, 
					first, pageSize, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
		}

		List<ITask> tasks = queryResult.getResultList();
		this.setRowCount(queryResult.getAllCount());
		
		return tasks;
	}
	
	public TaskProperty getTaskProperty(String sortField) {
		TaskProperty taskProperty = TaskProperty.ID;
		if (sortField != null)
		{
			taskProperty = TaskProperty.valueOf(sortField);
		}
		return taskProperty;
	}
	
	public OrderDirection getTaskDirection(SortOrder sortOrder) {
		OrderDirection direction;
		switch (sortOrder)
		{
		case DESCENDING:
			direction = OrderDirection.DESCENDING;
			break;
		default:
			direction = OrderDirection.ASCENDING;
		}
		return direction;
	}
	
	public void setTaskFilter(IPropertyFilter<TaskProperty> taskFilter) {
		this.taskFilter = taskFilter;
	}
	
	public void setIsHistory(Boolean isHistory) {
		this.isHistory = isHistory;
	}
}