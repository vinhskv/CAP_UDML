package org.vnu.sme.ocl2annos.observable;

import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import java.util.List;

import org.vnu.sme.ocl2annos.listener.AssociationListener;

public interface AssociationObservable {
    void addAssociationListener(AssociationListener listener);
    void removeAssociationListener(AssociationListener listener);
    void notifyAssociationChanged(String collectionName);
}
