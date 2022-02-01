//
//  SettingsViewController.swift
//  Prework
//
//  Created by Eduardo Bautista on 1/30/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var themeSegment: UISegmentedControl!
    
    let userDefaults = UserDefaults.standard
    let ON_OFF_KEY = "onOffKey"
    let THEME_KEY = "themeKey"
    let DARK_THEME = "darkTheme"
    let LIGHT_THEME = "lightTheme"
    let RED_THEME = "redTheme"

    override func viewDidLoad() {
        super.viewDidLoad()
        updateTheme()

        // Do any additional setup after loading the view.
    }
    
    func updateTheme(){
        let theme = userDefaults.string(forKey: THEME_KEY)
        if(theme == LIGHT_THEME){
            themeSegment.selectedSegmentIndex = 0
            view.backgroundColor = UIColor.white
        }
        else if(theme == DARK_THEME){
            themeSegment.selectedSegmentIndex = 1
            view.backgroundColor = UIColor.gray
        } else if(theme == RED_THEME){
            themeSegment.selectedSegmentIndex = 2
            view.backgroundColor = UIColor.green
        }
    }
    
    
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        
        switch themeSegment.selectedSegmentIndex{
        case 0 :
            userDefaults.set(LIGHT_THEME, forKey: THEME_KEY)
        case 1 :
            userDefaults.set(DARK_THEME, forKey: THEME_KEY)
        case 2 :
            userDefaults.set(RED_THEME, forKey: THEME_KEY)
        default:
            userDefaults.set(LIGHT_THEME, forKey: THEME_KEY)
        }
        
        updateTheme()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount


        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
