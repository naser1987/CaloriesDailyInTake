/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

/**
 *
 * @author Naser
 */
public class Fruit {

    public int id, gram;
    public String fruitName, image;
    public float Calories, CaloriesfromFat,
            TotalFat_g, Sodium_mg, Potassium_mg, TotalCarb_g,
            DietaryFiber_g, Sugars_g, Protein_g, VitaminA_DV,
            VitaminC_DV, Calcum_DV, Iron_DV;

    public Fruit(String line) {
        String[] strings = line.split("[|]");
        this.id = Integer.parseInt(strings[0]);
        this.fruitName = strings[1];
        this.gram = Integer.parseInt(strings[2]);
        this.Calories = Float.parseFloat(strings[3]);
        this.CaloriesfromFat = Float.parseFloat(strings[4]);
        this.TotalFat_g = Float.parseFloat(strings[5]);
        this.Sodium_mg = Float.parseFloat(strings[6]);
        this.Potassium_mg = Float.parseFloat(strings[7]);
        this.TotalCarb_g = Float.parseFloat(strings[8]);
        this.DietaryFiber_g = Float.parseFloat(strings[9]);
        this.Sugars_g = Float.parseFloat(strings[10]);
        this.Protein_g = Float.parseFloat(strings[11]);
        this.VitaminA_DV = Float.parseFloat(strings[12]);
        this.VitaminC_DV = Float.parseFloat(strings[13]);
        this.Calcum_DV = Float.parseFloat(strings[14]);
        this.Iron_DV = Float.parseFloat(strings[15]);
        this.image = strings[16];
    }

    @Override
    public String toString() {
        return "Fruit{" + "id=" + id + ", fruitName=" + fruitName + ", gram =" + gram + ", image=" + image + ", Calories=" + Calories + ", CaloriesfromFat=" + CaloriesfromFat + ", TotalFat_g=" + TotalFat_g + ", Sodium_mg=" + Sodium_mg + ", Potassium_mg=" + Potassium_mg + ", TotalCarb_g=" + TotalCarb_g + ", DietaryFiber_g=" + DietaryFiber_g + ", Sugars_g=" + Sugars_g + ", Protein_g=" + Protein_g + ", VitaminA_DV=" + VitaminA_DV + ", VitaminC_DV=" + VitaminC_DV + ", Calcum_DV=" + Calcum_DV + ", Iron_DV=" + Iron_DV + '}';
    }

    public static void main(String[] args) {
        try {
            BufferedReader br = new BufferedReader(new FileReader(new File("C:\\Users\\Naser\\Documents\\NetBeansProjects\\DailyCalorieIntake\\web\\WEB-INF\\Data\\fruit.txt")));
            String line;
            while ((line = br.readLine()) != null) {
                Fruit f = new Fruit(line);
                System.out.println(f);
            }
            br.close();
        } catch (Exception e) {
        }
    }
}
