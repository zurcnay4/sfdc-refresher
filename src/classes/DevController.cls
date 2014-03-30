/************************************
* @description	Controller Sandbox 
* @date			26 Mar 2014
* @author		Bayani Cruz
*************************************/

public with sharing class DevController {
	//BAC ActionStatus Mar 3 2014
   /* Integer count = 0;

    public void incrementCounter() {
        count++;
    }
    
    public Integer getCount() {
        return count;
    } */
    //END
    //multiselect
    Integer counter = 0;

    public void incrementCounter() {
        counter++;
        System.debug('*dev debug* : ' + counter);
    }

    public void decrementCounter() {
        counter--;
        System.debug('*dev debug* : ' + counter);
    }
    
    public Integer getCounter() {
        return counter;
    }

    public void setCounter(Integer counter) {
        this.counter = counter;
    }

    public PageReference CounterToZero() {
        this.setCounter(0);
        System.debug('*dev debug zero* : ' + counter);
        return null;
    }

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

}