/************************************
* @description	Controller Sandbox 
* @date			26 Mar 2014
* @author		Bayani Cruz
*************************************/

public with sharing class DevController {
	//BAC ActionStatus Mar 3 2014
    Integer count = 0;

    public void incrementCounter() {
        count++;
    }
    
    public Integer getCount() {
        return count;
    }
    //END

    //BAC SelectList component
    public String[] letters { get; set;}

    public List<SelectOption> getItems() {
    	List<SelectOption> options = new List<SelectOption>();
    	options.add(new SelectOption('A', 'A'));
		options.add(new SelectOption('B',' B'));
		options.add(new SelectOption('C', 'C'));
		options.add(new SelectOption('D', 'D'));
    	options.add(new SelectOption('E', 'E'));	

    	return options;		
    }

    public List<SelectOption> getItems_R() {
        
    }

    public PageReference addToLeft() {
        PageReference p = Page.devpage;
        p.setRedirect(true);
        p.getParameters().put('selection', letters[0]);
        return p;
    }

}