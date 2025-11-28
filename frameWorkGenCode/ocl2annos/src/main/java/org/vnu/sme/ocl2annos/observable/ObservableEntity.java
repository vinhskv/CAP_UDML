package org.vnu.sme.ocl2annos.observable;
/*
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;

public abstract class ObservableEntity {
    private transient PropertyChangeSupport propertyChangeSupport;
    
    public ObservableEntity() {
        propertyChangeSupport = new PropertyChangeSupport(this);
    }
    
    public void addListener(PropertyChangeListener listener) {
        propertyChangeSupport.addPropertyChangeListener(listener);
    }
    
    public void removeListener(PropertyChangeListener listener) {
        propertyChangeSupport.removePropertyChangeListener(listener);
    }
    
    public void notifyChange() {
        propertyChangeSupport.firePropertyChange("state", null, this);
    }
}
*/
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;

public abstract class ObservableEntity {
    private transient PropertyChangeSupport propertyChangeSupport;
    private transient PropertyChangeSupport associationChangeSupport;

    public ObservableEntity() {
        propertyChangeSupport = new PropertyChangeSupport(this);
        associationChangeSupport = new PropertyChangeSupport(this);
    }

    // State change listeners
    public void addListener(PropertyChangeListener listener) {
        propertyChangeSupport.addPropertyChangeListener(listener);
    }

    public void removeListener(PropertyChangeListener listener) {
        propertyChangeSupport.removePropertyChangeListener(listener);
    }

    public void notifyChange() {
        propertyChangeSupport.firePropertyChange("state", null, this);
    }

    // Association change listeners
    public void addAssociationListener(PropertyChangeListener listener) {
        associationChangeSupport.addPropertyChangeListener(listener);
    }

    public void removeAssociationListener(PropertyChangeListener listener) {
        associationChangeSupport.removePropertyChangeListener(listener);
    }

    public void notifyAssociationChange(String associationName, Object oldValue, Object newValue) {
        associationChangeSupport.firePropertyChange(associationName, oldValue, newValue);
    }

    // Overloaded method for simple association change notification
    public void notifyAssociationChange(String associationName) {
        associationChangeSupport.firePropertyChange(associationName, null, this);
    }
}