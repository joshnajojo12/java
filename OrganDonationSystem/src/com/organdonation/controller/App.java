package com.organdonation.controller;

import com.organdonation.model.AdminDAO;
import com.organdonation.model.HospitalDAO;
import com.organdonation.view.LandingView;
import javax.swing.SwingUtilities;

public class App {

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            // Create the View that will be displayed
            LandingView view = new LandingView();

            // Create the DAOs that the controller will need
            AdminDAO adminDAO = new AdminDAO();
            HospitalDAO hospitalDAO = new HospitalDAO();

            // Create the Controller to manage the view's logic
            // (We will create this LandingController class in the next step)
            new LandingController(view, adminDAO, hospitalDAO);

            // Make the landing page visible
            view.setVisible(true);
        });
    }
}